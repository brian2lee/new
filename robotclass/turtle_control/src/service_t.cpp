#include "ros/ros.h"
#include "turtle_control/msgs.h" 

int add(int a,int b)
{
   return a+b;
}

int multi(int a,int b)
{
    return a*b;
}

bool service_request(turtle_control::msgs::Request &req, turtle_control::msgs::Response &res)
{
    ROS_INFO("Request Num = %d",req.val);
    ROS_INFO("Request Num = %d",req.val2);
    res.ans=add(req.val,req.val2);
    res.ans2=multi(req.val,req.val2);
    ROS_INFO("Response: %d is add ",res.ans);
    ROS_INFO("Response: %d is muti ",res.ans2);
    return true;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "msgss");
    ros::NodeHandle nh;
    ros::ServiceServer service=nh.advertiseService("msgss",service_request);
    ros::spin();

    return 0;

}
