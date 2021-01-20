#include "ros/ros.h"
#include "cucumber/msgs.h" 

#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist
#include <stdlib.h> // For rand() and RAND_MAX

int argc;
char **argv;


float calcu(float ab, float cd)
{
    ros::init(argc, argv,"msgsssd");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<cucumber::msgs>("msgss");

    cucumber::msgs srv;
    srv.request.val = ab;
    srv.request.val2 = cd;
    if(client.call(srv))
        ROS_INFO("Finish send data");
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }
    
    return 0;
}

void turt() 
{
	
	// Initialize the ROS system and become a node .
	ros::init (argc, argv, "random_run_node" ) ;
	ros::NodeHandle nh ;
	
	// Create a publisher object .
	ros::Publisher pub = nh.advertise <geometry_msgs::Twist >("turtle1/cmd_vel", 1000) ;
	
	// Seed the random number generator .
	srand (time(0));

	// Loop at 2Hz until the node is shut down.
	ros::Rate loop_rate(2);
	while ( ros::ok () ) 
	{
		// Create and fill in the message . The other four
		// fields , which are ignored by turtl esim , default to 0.
		geometry_msgs::Twist msg ;
		msg.linear.x = double ( rand()) / double(RAND_MAX);
		msg.angular.z = 2 * double ( rand() )/double(RAND_MAX)-1 ;

		// Publish the message .
		pub.publish ( msg ) ;

		// Send a message to rosout with the details .
		ROS_INFO_STREAM( "Sending random velocity command : "
		<< " linear=" << msg.linear.x
		<< " angular=" << msg.angular.z) ;

		// Wait untilit's time for another iteration .
		loop_rate.sleep();
	}
}

int main(int argc,char **argv)
{

        float aa,bb;
	aa = atoll(argv[1]);
    	bb = atoll(argv[2]);

	calcu(aa,bb);	
	turt();
	return 0;
}
