#include "ros/ros.h"
#include "cucumber/msgs.h" 
#include <turtlesim/Pose.h> // For geometry_msgs::Twist

int argc;
char **argv;

float add(float a,float b)
{
   return a+b;
}

float multi(float a,float b)
{
    return a*b;
}
float divide(float a,float b)
{
    return a/b;
}
float minus(float a,float b)
{
    return a-b;
}

bool service_request(cucumber::msgs::Request &req, cucumber::msgs::Response &res)
{
    ROS_INFO("Request Num = %f",req.val);
    ROS_INFO("Request Num = %f",req.val2);
     res.ans=add(req.val,req.val2);
    res.ans2=multi(req.val,req.val2);
    res.ans3=minus(req.val,req.val2);
    res.ans4=divide(req.val,req.val2);
    ROS_INFO("Response: %f is add ",res.ans);
    ROS_INFO("Response: %f is minus ",res.ans3);
    ROS_INFO("Response: %f is muti ",res.ans2);
    ROS_INFO("Response: %f is divide ",res.ans4);
    return true;
}


bool calculation()
{
    ros::init(argc, argv, "msgssd");
    ros::NodeHandle nh;
    ros::ServiceServer service=nh.advertiseService("msgss",service_request);
    ros::spin();

    return true;

}

void Get_PoseMsg(const turtlesim::Pose& msg)
{
    ROS_INFO_STREAM(std::setprecision(2)<<std::fixed 
                    <<"position = (" <<msg.x <<", "<<msg.y <<")"
                    <<"direction = " <<msg.theta);
}


void turr() 
{
	// Initialize the ROS system and become a node .
	ros::init ( argc, argv, "get_turtle_fb" ) ;
	ros::NodeHandle nh ;
	
    // Create a subscriber 
    ros::Subscriber sub = nh.subscribe("turtle1/pose", 1000, &Get_PoseMsg);

    // Let ROS spin in this node
    ros::spin();
}

int main(int argc, char **argv)
{
        calculation();
	turr();
	
	return 0;
}
