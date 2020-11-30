#include "ros/ros.h"
#include "holamundo/IoTSensor.h"

// Topic messages callback
void chatterCallback(const holamundo::IoTSensor::ConstPtr& msg)
{
    ROS_INFO("Rx from C++: [%d, %s, %.2f ,%.2f]\n", msg->id, msg->region.c_str(), msg->temperatura, msg->humedad);
    //ROS_INFO(msg->region.c_str());
}

int main(int argc, char **argv)
{
    // Initiate a new ROS node named "listener"
	ros::init(argc, argv, "nodo_sub_iot2");
	//create a node handle: it is reference assigned to a new node
	ros::NodeHandle node;


    // Subscribe to a given topic, in this case "chatter".
	//chatterCallback: is the name of the callback function that will be executed each time a message is received.
    ros::Subscriber sub = node.subscribe("topic_iot", 1000, chatterCallback);

    // Enter a loop, pumping callbacks
    ros::spin();

    return 0;
}