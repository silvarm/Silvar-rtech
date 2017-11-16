#include "mouse_reader/mouse.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include "ros/ros.h"
#include <cstdlib>
#include <tuple>


int main(int argc, char** argv)
{
    ros::init(argc, argv, "mouse_reader");
    ros::NodeHandle n;
    
    ros::Publisher mouse_pub = n.advertise<mouse_reader::mouse> ("mouse_msg",1000);
    ros::Rate loop_rate(10);
	
	mouse_pub.publish(mouse_msg);
	ros::spinOnce();
	loop_rate.sleep();
   
    
    return 0; 
}


