#include "ros/ros.h"
#include "practicas/mensajeTest.h"

int main(int argc, char **argv) {

    ros::init(argc, argv, "nodo_emisor"); //registra el nombre del nodo
    ros::NodeHandle nodo;   //Creamos un objeto nodo 
    
    ROS_INFO("nodo_emisor creado y registrado"); //mandamos mensaje mediange ros info
    ros::Publisher publicadorMensajes = nodo.advertise<practicas::mensajeTest>("mensajeTest_topic",0);

    //tiempo a dormir en cada iteracción
    ros::Duration seconds_sleep(1);
    int contador =0;
    
    while (ros::ok()){
        //instancimaos un mensaje que queremos enviar
        practicas::mensajeTest mensajeAEnviar;
        
        //en el mensaje enviamos el número de veces que se ha iteradoen este bucle
        mensajeAEnviar.numero = contador;

        //se publica el mensaje
        publicadorMensajes.publish(mensajeAEnviar);

        //en este programa no es necesario spinOnce, pero si tuviera una funcion de callback es imprescindible para que se ejecute ros::spinOnce();
        ROS_DEBUG ("Se duerme el nodo emisor durante un segundo");
        //dormimos el nodo durante un tiempo
        seconds_sleep.sleep();
        
        //incrementamos el contador
        contador++;
    }
}

