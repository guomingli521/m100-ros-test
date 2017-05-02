#include "ros/ros.h"
#include "std_msgs/String.h"

#include "vedio/msg_led.h"
#include "vedio/msg_bomb.h"
#include "dji_sdk_demo/msg_move.h"

    #include <sys/types.h>  
    #include <sys/stat.h>  
    #include<unistd.h>
    #include<string.h>
    #include<errno.h>
    #include <fcntl.h>  
    #include <termios.h>  
    #include <stdio.h>  
    #define BAUDRATE        B115200  
    #define UART_DEVICE     "/dev/ttyS0"
    #define FALSE  -1  
    #define TRUE   0  

    /////////////////////////////////////////////
   	/*

    *@brief  设置串口通信速率 

    *@param  fd     类型 int  打开串口的文件句柄 

    *@param  speed  类型 int  串口速度 

    *@return  void 

    */  

    int speed_arr[] = {B115200, B38400, B19200, B9600, B4800, B2400, B1200, B300,  

                       B115200, B38400, B19200, B9600, B4800, B2400, B1200, B300, };  

    int name_arr[] = {115200, 38400, 19200, 9600, 4800, 2400, 1200,  300,   

                      115200, 38400, 19200, 9600, 4800, 2400, 1200,  300, };  

    void set_speed(int fd, int speed){  

      int   i;   

      int   status;   

      struct termios   Opt;  

      tcgetattr(fd, &Opt);   

      for ( i= 0;  i < sizeof(speed_arr) / sizeof(int);  i++) {   

        if  (speed == name_arr[i]) {       

          tcflush(fd, TCIOFLUSH);       

          cfsetispeed(&Opt, speed_arr[i]);    

          cfsetospeed(&Opt, speed_arr[i]);     

          status = tcsetattr(fd, TCSANOW, &Opt);    

          if  (status != 0) {          

            perror("tcsetattr fd1");    

            return;       

          }      

          tcflush(fd,TCIOFLUSH);     

        }    

      }  

    }  

    ////////////////////////////////////////////////////////////////////////////////  

    /** 

    *@brief   设置串口数据位，停止位和效验位 

    *@param  fd     类型  int  打开的串口文件句柄 

    *@param  databits 类型  int 数据位   取值 为 7 或者8 

    *@param  stopbits 类型  int 停止位   取值为 1 或者2 

    *@param  parity  类型  int  效验类型 取值为N,E,O,,S 

    */  

    int set_Parity(int fd,int databits,int stopbits,int parity)  

    {   

        struct termios options;   

        if  ( tcgetattr( fd,&options)  !=  0) {   

            perror("SetupSerial 1");       

            return(FALSE);    

        }  

        options.c_cflag &= ~CSIZE;   

        switch (databits) /*设置数据位数*/  

        {     

        case 7:       

            options.c_cflag |= CS7;   

            break;  

        case 8:       

            options.c_cflag |= CS8;  

            break;     

        default:      

            fprintf(stderr,"Unsupported data size\n"); return (FALSE);    

        }  

        switch (parity)   

        {     

            case 'n':  

            case 'N':      

                options.c_cflag &= ~PARENB;   /* Clear parity enable */  

                options.c_iflag &= ~INPCK;     /* Enable parity checking */   

                break;    

            case 'o':     

            case 'O':       

                options.c_cflag |= (PARODD | PARENB); /* 设置为奇效验*/    

                options.c_iflag |= INPCK;             /* Disnable parity checking */   

                break;    

            case 'e':    

            case 'E':     

                options.c_cflag |= PARENB;     /* Enable parity */      

                options.c_cflag &= ~PARODD;   /* 转换为偶效验*/       

                options.c_iflag |= INPCK;       /* Disnable parity checking */  

                break;  

            case 'S':   

            case 's':  /*as no parity*/     

                options.c_cflag &= ~PARENB;  

                options.c_cflag &= ~CSTOPB;break;    

            default:     

                fprintf(stderr,"Unsupported parity\n");      

                return (FALSE);    

            }    

        /* 设置停止位*/    

        switch (stopbits)  

        {     

            case 1:      

                options.c_cflag &= ~CSTOPB;    

                break;    

            case 2:      

                options.c_cflag |= CSTOPB;    

               break;  

            default:      

                 fprintf(stderr,"Unsupported stop bits\n");    

                 return (FALSE);   

        }   

        /* Set input parity option */   

        if (parity != 'n')     

            options.c_iflag |= INPCK;   

        tcflush(fd,TCIFLUSH);  

        options.c_cc[VTIME] = 150; /* 设置超时15 seconds*/     

        options.c_cc[VMIN] = 0; /* Update the options and do it NOW */  

        if (tcsetattr(fd,TCSANOW,&options) != 0)     

        {   

            perror("SetupSerial 3");     

            return (FALSE);    

        }   

        options.c_lflag  &= ~(ICANON | ECHO | ECHOE | ISIG);  /*Input*/  

        options.c_oflag  &= ~OPOST;   /*Output*/  

        return (TRUE);    

    }  

    ////////////////////////////////////////////////////////////////////////////////  
int last_flag=0;
int num=0;
int numnot=0;
vedio::msg_led receive_led;
vedio::msg_bomb receive_bomb;
dji_sdk_demo::msg_move receive_move;
void ledcallback(vedio::msg_led send_led)
{
  
  receive_led=send_led;
 // ROS_INFO("%d",send_uart.flag);
   
}
void bombcallback(vedio::msg_bomb send_bomb)
{
  
  receive_bomb=send_bomb;
 // ROS_INFO("%d",send_uart.flag);
   
} 
void movecallback(dji_sdk_demo::msg_move send_move)
{
  
  receive_move=send_move;
 // ROS_INFO("%d",send_uart.flag);
   
} 

    int main(int argc, char *argv[])  
    {  
	ros::init(argc,argv,"serve_node");
	ros::NodeHandle n; 
	ros::Subscriber led_subscriber = n.subscribe<vedio::msg_led>("vedio/msg_led",1,ledcallback); 
	ros::Subscriber bomb_subscriber = n.subscribe<vedio::msg_bomb>("vedio/msg_bomb",1,bombcallback);
	ros::Subscriber move_subscriber = n.subscribe<dji_sdk_demo::msg_move>("dji_sdk_demo/msg_move",1,movecallback);
	ros::Rate loop_rate(10);
	
	int fd;
	char data;
 
        fd = open(UART_DEVICE,O_WRONLY);  
        if (fd <=0)
 	{  
	printf("uart open failed\n");
        }  
        set_speed(fd,9600);  

        if (set_Parity(fd,8,1,'N') == FALSE)  
	{  

            printf("Set Parity Error\n"); 

        }  

       
        while(ros::ok()) 
	{  
	 data=(receive_led.right<<6)|(receive_led.left<<4)|(receive_move.status<<2)|(receive_bomb.hit);
	//printf("%x\n",data);
         write(fd,&data, 1);	                    	       
	
	


	
	  		

  	ros::spinOnce();
  	loop_rate.sleep();
	}
      

     

     //   close(fd);  

      

        return 0;  

 }  
