#include "ros/ros.h"
#include "trabajo/pos_usuario.h"
//#include <iostream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "nodo_pos_usuario");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<trabajo::pos_usuario>("pos_usuario_topic", 1000);
    //ros::Rate loop_rate(10);

    int posX,posY,posZ;
    trabajo::pos_usuario datos;
    ROS_INFO("Nodo pos_usuario iniciado!");

    while (ros::ok())
    {
        ROS_INFO("Introducir posicion del usuario");
        std::cout<< "Indique posicion en X: ";
        std::cin >> posX;
        std::cout<< "Indique posicion en Y: ";
        std::cin >> posY;
        std::cout<< "Indique posicion en Z: ";
        std::cin >> posZ;

        datos.x = posX;
        datos.y = posY;
        datos.z = posZ;
        pub.publish(datos);
        ROS_INFO("Datos posicion usuario enviados!");
        //ros::spinOnce();
        //loop_rate.sleep();
    }
    return 0;
}