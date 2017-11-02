#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <tf/transform_broadcaster.h>
#include <geometry_msgs/Twist.h>

#include "std_msgs/Header.msg"
#include <geometry_msgs/Point.msg>


int main(int argc, char **argv)
{

  ros::init(argc, argv, "pointer");
  ros::NodeHandle n;
  ros::Publisher x_pub = n.advertise<geometry_msgs/Point.msg>("x", 1000);
  ros::Publisher y_pub = n.advertise<geometry_msgs/Point.msg>("y", 1000);

  ros::Rate loop_rate(10);


  double x = 0.0;
  double y = 0.0;

  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();

  int count = 0;

for( x = 0; x < 120; x = x + 1 ) {
 for( y = 0; y < 120; y = y + 1 ) {
  while (ros::ok())
  {
    geometry_msgs::Point x_msg;
    geometry_msgs::Point y_msg;

    std::stringstream x;
    x << "x" << count;
    std::stringstream y;
    x << "y" << count;

    x_msg.data = x.str();
    y_msg.data = y.str();
    ROS_INFO("%s", x_msg.data.c_str());
    ROS_INFO("%s", y_msg.data.c_str());
    x_pub.publish(x_msg)
    y_pub.publish(y_msg)
    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
}
   }
  return 0;
}
