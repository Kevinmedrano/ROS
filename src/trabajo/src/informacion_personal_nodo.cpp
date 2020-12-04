#include "ros/ros.h"
#include "trabajo/inf_personal_usuario.h"

int main(int argc, char **argv) {

    ros::init(argc, argv, "inf_pers_topic"); //registra el nombre del nodo
    if (argc != 3){
       ROS_INFO("Introdir: Nombre Edad [Idiomas]");
       return 1;
    }
    ros::NodeHandle nodo;   //Creamos un objeto nodo 
    
    ROS_INFO("Nodo creado y registrado"); //mandamos mensaje mediange ros info
    ros::Publisher publicadorMensajes = nodo.advertise<trabajo::inf_personal_usuario>("empaquetador_nodo",0);

    //tiempo a dormir en cada iteracción
    ros::Duration seconds_sleep(1);
    
    while (ros::ok()){
        
        //instancimaos un mensaje que queremos enviar
        trabajo::inf_personal_usuario mensajeAEnviar;
        
        //en el mensaje enviamos el número de veces que se ha iteradoen este bucle
        mensajeAEnviar.numerocd = contador;

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
