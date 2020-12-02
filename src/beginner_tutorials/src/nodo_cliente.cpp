#include "ros/ros.h"
#include "beginner_tutorials/tipo_servicio.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "nodo_cliente");
  if (argc != 3)
  {
    ROS_INFO("Usar: Poner dos parametros X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<beginner_tutorials::tipo_servicio>("sumar");
  beginner_tutorials::tipo_servicio srv;
  srv.request.argumento1 = atoll(argv[1]);
  srv.request.argumento2 = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("Suma: %ld", (long int)srv.response.resultado1);
  }
  else
  {
    ROS_ERROR("Fallo en cargar el servicio");
    return 1;
  }

  return 0;
}