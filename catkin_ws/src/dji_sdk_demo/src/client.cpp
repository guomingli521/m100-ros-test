#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <cstdlib>
#include <stdlib.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include <geometry_msgs/TransformStamped.h> //IMU
#include <geometry_msgs/Vector3Stamped.h> //velocity
#include <sensor_msgs/LaserScan.h> //obstacle distance && ultrasonic

#include "dji_sdk_demo/msg_vision.h"


#include "std_msgs/String.h"
#include "vedio/msg_xy.h"

using namespace DJI::onboardSDK;


int num=0;
int land_flag=0;

float PIDx(float input);
float PIDy(float input);
float PIDz(float input,float height);


ros::Publisher vision_publisher;
ros::Publisher move_publisher;


ros::Subscriber ultrasonic_sub;
ros::Subscriber xy_subscriber;

vedio::msg_xy receive_xy;

float g_ultrasonic;

void xycallback(vedio::msg_xy send_xy)
{
  
  receive_xy=send_xy;

}


void ultrasonic_callback(const sensor_msgs::LaserScan& g_ul)
{
	g_ultrasonic= g_ul.ranges[0];
      
}






int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sdk_client");
    ros::NodeHandle nh;
    DJIDrone* drone = new DJIDrone(nh);
   
   vision_publisher = nh.advertise<dji_sdk_demo::msg_vision>("dji_sdk_demo/msg_vision", 1000);


    ultrasonic_sub = nh.subscribe("/guidance/ultrasonic", 1, ultrasonic_callback);
    xy_subscriber  = nh.subscribe<vedio::msg_xy>("vedio/msg_xy",1000,xycallback);
    
    ros::Rate loop_rate(100);
    int obtain_flag=0;
    
   dji_sdk::RCChannels remote; 
    uint8_t status;
    dji_sdk_demo::msg_vision vision;
   
   
   
    while(ros::ok())
    {

    	remote=drone->rc_channels;
	
	
 	if(obtain_flag==0&&remote.mode==8000)
	{
	 drone->request_sdk_permission_control();
         obtain_flag=1;         
		
	 land_flag=0;
	}
        if(obtain_flag==1)
	{				
		if(remote.mode!=8000)
		{
		 drone-> release_sdk_permission_control();	
         	 obtain_flag=0;
		}



		if(remote.gear==-10000)
		{
                 vision.flag=0;
		
		// drone->attitude_control(91, PIDx(receive_xy.y), PIDy(-receive_xy.x),2.5, 0);
		 drone->attitude_control(75,PIDx(receive_xy.y),-PIDy(receive_xy.x), PIDz(g_ultrasonic,2.5),0);		
		}
		if(remote.gear==-4545)
		{
                 vision.flag=1;	
	 	
			
			if(receive_xy.x!=0&&receive_xy.y!=0&&land_flag!=1)
			{
			 drone->attitude_control(75,PIDx(receive_xy.y),-PIDy(receive_xy.x), PIDz(g_ultrasonic,1),0);
			}
			if(receive_xy.x<20&&receive_xy.x>-20&&receive_xy.x!=0&&receive_xy.y<20&&receive_xy.y>-20&&receive_xy.y!=0&&g_ultrasonic<1)
			{
			  num=num+1;			 
			 	if(num>7)
				{
				land_flag=1;
				}
				else
				{
				land_flag=0;
				}

			}
			else
			{
			 num=0;
			}
			
			if(land_flag==1)
			{
			 drone->attitude_control(11,0,0,-0.5,0);
			}

		}
	
	}

       vision_publisher.publish(vision);


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

float PIDz(float input,float height)
{
const float kp=0.5;
const float ki=0;
const float kd=0;

static float error[2]={0};
static float output=0;
static float I=0;
static float D=0;

error[0]=error[1];
error[1]=height-input;

I+=error[1];
D=error[1]-error[0];  
output=error[1]*kp+I*ki+D*kd;

if(output>0.5)
{
output=0.5;
}
if(output<-0.5)
{
output=-0.5;
}

return output;
}


