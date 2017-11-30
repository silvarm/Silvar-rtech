#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/PointStamped.h"
#include "geometry_msgs/Point32.h"
#include "mouse_reader/mouse.h"
#include <sstream>
#include <iostream>

using namespace std;
float x;
float y;
float z;
bool nupp;

void mouseCallback(const mouse_reader::mouse mouse_msg) 
{
  x = mouse_msg.xy_asukoht.x;
  y = mouse_msg.xy_asukoht.y;
  z = mouse_msg.xy_asukoht.z;
  nupp = mouse_msg.mouse_bool;

}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "pointer");

  ros::NodeHandle n;

  ros::Subscriber Mouse_pub = n.subscribe("mouse_msg", 1, mouseCallback);

  ros::Publisher point_pub = n.advertise<geometry_msgs::PointStamped>("XYZ_position2", 1);
  
  ros::Rate loop_rate(10);

geometry_msgs::PointStamped point;

int count = 0;

while(ros::ok())
	{

point.header.seq = count;
point.header.frame_id = "odom";
point.point.x = -x/10;
point.point.y = y/10;
point.point.z = 0.0;


cout << "x on: "<< point.point.x ;
cout << "    y on: "<< point.point.y;	
cout << "           nupp on: "<< nupp << endl;


point_pub.publish(point);
ros::spinOnce();
loop_rate.sleep();
count++;
}
}

