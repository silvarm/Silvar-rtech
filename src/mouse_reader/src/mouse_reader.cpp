#include <cstdlib>
#include <istream>
#include <iostream>
#include <fstream>
#include "ros/ros.h"
#include "geometry_msgs/Point32.h"
#include <linux/input.h>
#include <string.h>
#include <map>
#include <vector>
#include <errno.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <glob.h>
#include <sstream>

using namespace std;

int main(int argc, char** argv)
{

ros::init(argc, argv, "mouse_reader");
ros::NodeHandle n;
ros::Publisher Mouse_pub = n.advertise<geometry_msgs::Point32> ("mouse_msg",1);
ros::Rate loop_rate(10);
geometry_msgs::Point32 mouse_msg;


float x = 0.0;
float y = 0.0;
int newdata;

int fd = open("/dev/input/event4", O_RDONLY);
struct input_event ibuffer[64];
int bytes;
while(ros::ok())
    {
        // Read Mouse     
        bytes = read(fd, ibuffer, sizeof(struct input_event) * 64);
	//cout << "Bytesid on: "<< bytes << endl;

        if(bytes > 0)
        {
	    newdata = bytes/sizeof(struct input_event);
	   // printf("newdata on: %i\n", newdata);

        for(int i=0; i<newdata; i++)
	{
	switch(ibuffer[i].type)				
          {
            case EV_MSC:				
              printf("nupu vajutus\n");
              break;
            case EV_REL:

              if (ibuffer[i].code == 0) 
		{

		//printf(ibuffer[i].value);

                x += ibuffer[i].value;
		}
              if (ibuffer[i].code == 1) 
		{

		//printf(ibuffer[i].value);

               y += ibuffer[i].value;
		}

		printf("x=%f, y=%f\n", x, y);

		break;
	  }
     		mouse_msg.x = x/100;
		mouse_msg.y = y/100;
		mouse_msg.z = 0;
		Mouse_pub.publish(mouse_msg);
	}
        }    
 }

    return 0; 
}
