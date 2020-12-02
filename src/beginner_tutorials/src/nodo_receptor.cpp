/*
 * Author: Kevin Medrano Ayala
 * Year: 2020
 *
 */

#include "ros/ros.h"
#include "std_msgs/String.h"

// Topic messages callback
void funcionCallback(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("He recibido un mensaje de test con elnumero: [%s]\n", msg->data.c_str());
}

int main(int argc, char **argv)
{
    // Initiate a new ROS node named "listener"
        ros::init(argc, argv, "nodo_receptor");
        //create a node handle: it is reference assigned to a new node
        ros::NodeHandle node;


    // Subscribe to a given topic, in this case "chatter".
        //chatterCallback: is the name of the callback function that will be executed each time a message is received.
    ros::Subscriber sub = node.subscribe("topic_mensaje", 1000, funcionCallback);

    // Enter a loop, pumping callbacks
    ros::spin();

    return 0;
}
