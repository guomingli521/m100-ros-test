#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dji_sdk_demo/uart.h"
   
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
dji_sdk_demo::uart receive_uart;
void uartcallback(dji_sdk_demo::uart send_uart)
{
  
  receive_uart=send_uart;
 // ROS_INFO("%d",send_uart.flag);
   
}
  

    int main(int argc, char *argv[])  
    {  
	ros::init(argc,argv,"serve_node");
	ros::NodeHandle n; 
	ros::Subscriber uart_subscriber = n.subscribe<dji_sdk_demo::uart>("dji_sdk_demo/uart",1,uartcallback); 
	
	ros::Rate loop_rate(15);
	int i=0;
        int send[9];

        int fd; 
        int up[9]={0xff,0xff,0x00,0x05,0x03,0x1e,0x00,0x00,0xd9};
        int down[9]={0xff,0xff,0x00,0x05,0x03,0x1e,0xff,0x03,0xd7};
	int turn[3][9]={{0xff,0xff,0x01,0x05,0x03,0x1e,0xff,0x03,0xd6},
			{0xff,0xff,0x01,0x05,0x03,0x1e,0xff,0x01,0xd8}, 			
         		{0xff,0xff,0x01,0x05,0x03,0x1e,0x00,0x00,0xd8}};
	
	
 
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

        int j=0;
        
	for(i=0;i<9;i++)
	{
         write(fd,&turn[0][i], 1);
                         
        }
        while(1) 
	{  
         
	
    
	//ROS_INFO("%d",receive_uart.flag);	
        // printf("%d/n",receive_uart.flag);

	switch(receive_uart.flag)
	{
	 case 0 : {
                    break;
		  }
	 case 1 : {
		   	
		   	for(i=0;i<9;i++)
	 		{
         		 write(fd,&up[i], 1);	             
         	        } 
		  	
		   break;
		  }
	 case 2 : {
		     
		   	for(i=0;i<9;i++)
	 		{
        		 write(fd,&down[i], 1);
            		}	                     
         	       
 		   break;	
		  }
	case 3 : {
		   if(numnot>10||num>10)
	           {   
		  	if(j==2)
		  	{			
		   	 j=-1;		
		  	}
		 j=j+1;
			
		  	for(i=0;i<9;i++)
	 		{
        		 write(fd,&turn[j][i], 1); 	           		                
         		}
			num=0;
			numnot=10;
		    }
		                     	 
		  break;		  		  
		 }	
	}
	last_flag=receive_uart.flag;	
	if(last_flag==3)
	{ 
	 num=num+1;
	}
 	if(last_flag!=3)
	{ 
	 numnot=numnot+1;
	}


	
	  		

ros::spinOnce();
  loop_rate.sleep();


	

	}
      

     

     //   close(fd);  

      

        return 0;  

 }  