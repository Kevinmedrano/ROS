#include "ros/ros.h"
#include "practicas/mensajeTest.h"

// Funcion que se ejecuta cada vez que recibe un mensaje
void funcionCallback(const practicas::mensajeTest::ConstPtr& msg){
    ROS_INFO("He recibido un mensaje de test con elnumero: %d", msg->numero);
}

int main(int argc, char **argv){

    //registra el nombre del nodo: nodo_receptor
    ros::init(argc, argv, "nodo_receptor");
    ros::NodeHandle nodoReceptor;
    ROS_INFO("nodo_receptor creado y registrado"); //muestra en pantalla

    //si recibimos el mensaje cuyo topic es: "mensajeTest_topic" llamamos a la función manejadora: funcionCallback
    ros::Subscriber subscriptor = nodoReceptor.subscribe("mensajeTest_topic", 0, funcionCallback);

    /** Loop infinito para que no finalice laejecución del nodo y siempre se pueda llamar al callback */
    ros::spin();
    return 0;
}
