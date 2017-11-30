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
#include "mouse_reader/mouse.h"

using namespace std;

int main(int argc, char** argv)
{

ros::init(argc, argv, "mouse_reader");
ros::NodeHandle n;
ros::Publisher Mouse_pub = n.advertise<mouse_reader::mouse> ("mouse_msg",1);

ros::Rate loop_rate(10);

mouse_reader::mouse mouse_msg;

string nimi;
bool left = false;
bool right = false;
float x = 0.0;
float y = 0.0;
int newdata;

int fd = open("/dev/input/event14", O_RDONLY);
struct input_event ibuffer[64];
int bytes;
while(ros::ok())
    {
        // Read Mouse     
        bytes = read(fd, ibuffer, sizeof(struct input_event) * 64);

        if(bytes > 0)
        {
	    newdata = bytes/sizeof(struct input_event);

        for(int i=0; i<newdata; i++)
	{
	switch(ibuffer[i].type)				
          {
            case EV_KEY:				
		if (ibuffer[i].code == 272) 
		{
                left = ibuffer[i].value;
		nimi = "vasak";	
		}
		else
		{
                left = false;
                 }
              break;
            case EV_REL:

              if (ibuffer[i].code == 0) 
		{
                x += ibuffer[i].value;
		}
              if (ibuffer[i].code == 1) 
		{
                y += ibuffer[i].value;
		}

		

		break;
	  }
		printf("x=%f, y=%f, vasak=%i\n", x, y,  left);

     		mouse_msg.xy_asukoht.x = x/100;
		mouse_msg.xy_asukoht.y = y/100;
		mouse_msg.xy_asukoht.z = 0;
		mouse_msg.mouse_bool = left;
		mouse_msg.mouse_click = nimi;
		Mouse_pub.publish(mouse_msg);
	}
        }    
 }

    return 0; 
}
