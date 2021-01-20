#include<ros/ros.h>
#include<stdio.h>
#include<stdlib.h>
#include <std_srvs/Empty.h>
#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist
int argc; 
char ** argv;

void show_all_bg_color(ros::NodeHandle NodeHandler)
{
    int bg_color_r, bg_color_g, bg_color_b;
    NodeHandler.getParam("/background_r", bg_color_r);
    NodeHandler.getParam("/background_g", bg_color_g);
    NodeHandler.getParam("/background_b", bg_color_b);

    ROS_INFO("bg_color_r = %d", bg_color_r);
    ROS_INFO("bg_color_g = %d", bg_color_g);
    ROS_INFO("bg_color_b = %d", bg_color_b);
}

void set_bg_color(ros::NodeHandle NodeHandler, int r, int g, int b)
{
    NodeHandler.setParam("/turtlesim/background_b", b);
    NodeHandler.setParam("/turtlesim/background_g", g);
    NodeHandler.setParam("/turtlesim/background_r", r);
    NodeHandler.setParam("/self_param1", b);
}


void colors() 
{
    ros::init(argc, argv, "rw_turtle_bg_color");
    ros::NodeHandle nh;
    
    // 等待clear服務啟動
    ros::service::waitForService("clear");

    // setting parameter
    show_all_bg_color(nh);
    set_bg_color(nh, 50, 150, 120);
    show_all_bg_color(nh);

    // 輸出與載入設定好的參數
    system("rosparam dump /home/chien/ros_test/src/paramter_test/config/data.yaml");
    system("rosparam load /home/chien/ros_test/src/paramter_test/config/data.yaml");

    // 宣告與呼叫service
    ros::ServiceClient clear_client = nh.serviceClient<std_srvs::Empty>("/clear");
    std_srvs::Empty srv;
    clear_client.call(srv);
}

long int random() 
{
	// Initialize the ROS system and become a node .
	ros::init ( argc, argv, "random_run_node" ) ;
	ros::NodeHandle nh ;
	
	// Create a publisher obj ect .
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

int main()
{
	colors();
	random();
}


