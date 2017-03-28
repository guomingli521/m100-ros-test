#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <cstdlib>
#include <stdlib.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

#include "vedio/xy.h"
#include "std_msgs/String.h"
#include "dji_sdk_demo/uart.h"

int limit=20;

using namespace DJI::onboardSDK;

ros::Publisher uart_publisher;
float PIDx(float input);
float PIDy(float input);
vedio::xy receive;
void xycallback(vedio::xy send)
{
  receive=send;
}


int main(int argc, char *argv[])
{
   
    ros::init(argc, argv, "sdk_client");
    ROS_INFO("sdk_service_client_test");
    ros::NodeHandle nh;
    DJIDrone* drone = new DJIDrone(nh);
    
    ros::Subscriber xy_subscriber = nh.subscribe<vedio::xy>("vedio/xy", 1000,xycallback); 
    uart_publisher = nh.advertise<dji_sdk_demo::uart>("dji_sdk_demo/uart", 1000);
   ros::Rate loop_rate(100);

    int obtain_flag=0;
    dji_sdk::RCChannels remote;
    uint8_t status;
    int throttle=0;
   
    while(1)
    {
   	
	dji_sdk_demo::uart send_flag;
     	remote=drone->rc_channels;
 	if(obtain_flag==0&&remote.mode==8000)
	{
	 drone->request_sdk_permission_control();
         obtain_flag=1;         
	}
        if(obtain_flag==1)
	{
	// drone->attitude_control(91, PIDx(receive.y), PIDy(-receive.x),2.5, 0);
	// usleep(20000);
	 //  drone->attitude_control(91,0,0,2.5, 0);
		if(remote.gear==-10000)
		{
                 send_flag.flag=1;		 	
		}
		if(remote.gear==-4545)
		{
                 send_flag.flag=2;		 	
		}
               // if(throttle>-5000&&remote.throttle<=-5000)
//		if(receive.x<limit&&receive.x>-limit&&receive.y<limit&&receive.y>-limit&&receive.x!=0&&receive.y!=0)
//		{
//		 i=i+1;
//			if(i==50)
//			{
//                	 send_flag.flag=3;
//			 i=0;
//			 
//			}
//		}
		

		if(remote.mode!=8000)
		{
		 drone-> release_sdk_permission_control();	
         	 obtain_flag=0;
		}
	throttle=remote.throttle;
	
	}

if(receive.x<limit&&receive.x>-limit&&receive.y<limit&&receive.y>-limit&&receive.x!=0&&receive.y!=0)
		{	
		 	
                	 send_flag.flag=3;
			 
		}



       uart_publisher.publish(send_flag);  

      
       ros::spinOnce();
       loop_rate.sleep();

    }
    return 0;
}



float PIDx(float input)
{
const float kp=0.0025;
const float ki=0;
const float kd=0;

static float error[2]={0};
static float output=0;
static float I=0;
static float D=0;

error[0]=error[1];
error[1]=0-input;

I+=error[1];
D=error[1]-error[0];
output=error[1]*kp+I*ki+D*kd;

if(output>1)
{
output=1;
}
if(output<-1)
{
output=-1;
}

return output;
}

float PIDy(float input)
{
const float kp=0.0025;
const float ki=0;
const float kd=0;

static float error[2]={0};
static float output=0;
static float I=0;
static float D=0;

error[0]=error[1];
error[1]=0-input;

I+=error[1];
D=error[1]-error[0];
output=error[1]*kp+I*ki+D*kd;

if(output>1)
{
output=1;
}
if(output<-1)
{
output=-1;
}

return output;
}


