#include "ros/ros.h"
#include "practicas/tipo_servicio.h"

/** Funcion ofertada: servicio */

bool servicio(practicas::tipo_servicio::Request  &req,  practicas::tipo_servicio::Response &res){
    // al argumento de entrada se le suma + 1
    res.resultado1 = req.argumento1 + 1;
    ROS_INFO("Petición: x = %d", (int)req.argumento1);
    ROS_INFO("Respuesta: %d", (int)res.resultado1);
    return true;
}

int main(int argc, char **argv){
    //registra el nombre del nodo
    ros::init(argc, argv, "nodo_servidor");
    ros::NodeHandle n;

    //registra el servicio
    ros::ServiceServer service = n.advertiseService("nombre_servicio", servicio);
    ROS_INFO("Servicio registrado.");
    //nos quedamos a la espera de llamadas al servicio
    ros::spin();
    return 0;
}