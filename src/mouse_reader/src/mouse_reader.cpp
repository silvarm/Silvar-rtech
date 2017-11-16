#include "mouse_reader/mouse.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include "ros/ros.h"
#include <cstdlib>
#include <tuple>
#include "std_msgs/String.h"



	
const char *pDevice = "/dev/input/event4";

    
// Open Mouse
int fd = open(pDevice, O_RDWR);



/*
    while(ros::ok())
    {*/
        // Read Mouse     
        bytes = read(fd, data, sizeof(data));

        if(bytes > 0)
        {
            left = data[0] & 0x1;
            x = data[1];
            y = data[2];

            printf("x=%d, y=%d, left=%d", x, y, left);
	}
	mouse_reader::Mouse mouse_msg;
	//char mouse_msg;
	mouse_msg.x = x;
	mouse_msg.y = y;
	mouse_msg.left = left;

int main(int argc, char** argv)
{

    ros::init(argc, argv, "mouse_reader");
    ros::NodeHandle n;
    
    ros::Publisher Mouse_pub = n.advertise<mouse_reader::Mouse> ("mouse_msg",1000);
    ros::Rate loop_rate(10);

	while(ros::ok())
    {
	Mouse_pub.publish(mouse_msg);
	ros::spinOnce();
	loop_rate.sleep();
	}
    
    return 0; 
}

