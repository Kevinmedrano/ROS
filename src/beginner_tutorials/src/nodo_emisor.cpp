/*
 * Author: Kevin Medrano Ayala
 * Year: 2020
 *
 */

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
        // Initiate new ROS node named "talker"
        ros::init(argc, argv, "nodo_emisor");
        //create a node handle: it is reference assigned to a new node
        ros::NodeHandle n;
        ROS_INFO("nodo_emisor creado y registrado");
        //create a publisher with a topic "chatter" that will send a String message
        ros::Publisher publicadorMensajes = n.advertise<std_msgs::String>("topic_mensaje", 1000);
        //Rate is a class the is used to define frequency for a loop. Here we send a message each two seconds.
        ros::Rate loop_rate(0.5); //1 message per second

   int contador = 0;
   while (ros::ok()) // Keep spinning loop until user presses Ctrl+C
   {
       //create a new String ROS message.
           //Message definition in this link http://docs.ros.org/api/std_msgs/html/msg/String.html
           std_msgs::String msg;

       //create a string for the data
           std::stringstream ss;
           ss << "Nodo emisor" << contador;
           //assign the string data to ROS message data field
       msg.data = ss.str();

       //print the content of the message in the terminal
       ROS_INFO("[nodo_emisor] Hola Publicando %s\n", msg.data.c_str());

       //Publish the message
       publicadorMensajes.publish(msg);

       ros::spinOnce(); // Need to call this function often to allow ROS to process incoming messages

      loop_rate.sleep(); // Sleep for the rest of the cycle, to enforce the loop rate
       contador++;
   }
   return 0;
}
