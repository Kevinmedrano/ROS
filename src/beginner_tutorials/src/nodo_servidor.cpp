#include "ros/ros.h"
#include "beginner_tutorials/tipo_servicio.h"
#include <cstdlib>

bool servicio(beginner_tutorials::tipo_servicio::Request  &req, beginner_tutorials::tipo_servicio::Response &res){
  
  res.resultado1 = req.argumento1 + req.argumento2;
  ROS_INFO("Respuesta R: x=%ld, y=%ld", (long int)req.argumento1, (long int)req.argumento2);
  ROS_INFO("Enviando Respuesta: [%ld]", (long int)res.resultado1);
  return true;

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "nodo_servidor");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("sumar", servicio);
  ROS_INFO("Servicio registrado.");
  ros::spin();

  return 0;
}