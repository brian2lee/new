#include "ros/ros.h"
#include "turtle_control/msgs.h" 

int main(int argc, char **argv)
{
    ros::init(argc, argv,"msgsss");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<turtle_control::msgs>("msgss");

    turtle_control::msgs srv;
    srv.request.val = atoll(argv[1]);
    srv.request.val2 = atoll(argv[2]);
    if(client.call(srv))
        ROS_INFO("Finish send data");
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }
    
    return 0;
}
