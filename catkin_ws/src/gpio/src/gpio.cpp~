#include <ros/ros.h>
#include <stdio.h>
#include <cstdlib>
#include <stdlib.h>
#include <iostream>

#include <sys/types.h>  
#include <sys/stat.h>  
#include<unistd.h>
#include<string.h>
#include<errno.h>
#include <fcntl.h>  
#include <termios.h> 

#include "std_msgs/String.h"
#include "gpio/msg_gpio.h"

using namespace std;


char buf[2];
int fd;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "gpio");
    ros::NodeHandle n;

    //ros::Rate rate(10);
    ros::Publisher gpio_publisher = n.advertise<gpio::msg_gpio>("gpio/msg_gpio",1);
    fd = open("/sys/class/gpio/gpio157/value",O_RDONLY);
    gpio::msg_gpio send;
 
    while(ros::ok())
    { 
      fd = open("/sys/class/gpio/gpio157/value",O_RDONLY);
    read(fd,&buf,2);
    printf("%d\n",atoi(buf));
    send.gpio=atoi(buf);
    
    gpio_publisher.publish(send);
    

    ros::spinOnce();
    close(fd);
//rate.sleep();
    }

    return 0;
}

