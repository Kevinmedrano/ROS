
#include "ros/ros.h"
#include "trabajo/usuario.h"

void Callback(const trabajo::usuario &msg)
{
    ROS_INFO("Datos recibidos");
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "nodo_dialogo");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("user_topic", 1000, Callback);
    ros::spin();
    return 0;
}