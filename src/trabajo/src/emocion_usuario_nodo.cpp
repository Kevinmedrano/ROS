#include "ros/ros.h"
#include "std_msgs/String.h"
//#include <iostream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "emocion_usuario");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<std_msgs::String>("emocion_topic", 1000);
    ROS_INFO("Nodo emocion iniciado!");
    std::string emocion;
    //ros::Rate loop_rate(10);
    while (ros::ok())
    {
        
        std::cout << "Escribe tu emocion: ";
        std::getline(std::cin, emocion);
        
        std_msgs::String msg;
        msg.data = emocion;
        pub.publish(msg);
        ROS_INFO("Dato emocion publicado!");
        ros::spinOnce();
        //loop_rate.sleep();
    }
    return 0;
}