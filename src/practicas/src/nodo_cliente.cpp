#include "ros/ros.h"
#include "practicas/tipo_servicio.h"
#include <cstdlib>

int main(int argc, char **argv){

    //registra el nombre del nodo
    ros::init(argc, argv, "nodo_cliente");
    ros::NodeHandle n;

    //vamos a invocar el servicio llamado Servico
    ros::ServiceClient client = n.serviceClient<practicas::tipo_servicio>("nombre_servicio");

    practicas::tipo_servicio srv;
    srv.request.argumento1 = 2;  //le damos un valor de prueba
    if (client.call(srv)){
        ROS_INFO("Respuesta del servicio: %d", (int)srv.response.resultado1);
    }
    else{
        ROS_ERROR("Fallo al llamar al servicio: nombre_servicio");
    }
    return 1;
}