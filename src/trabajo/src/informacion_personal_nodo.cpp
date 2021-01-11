
#include "ros/ros.h"
#include "trabajo/inf_personal_usuario.h"
//#include <vector>
#include "std_msgs/String.h"

using namespace std;

trabajo::inf_personal_usuario datos;

std_msgs::String cadena[2];
std_msgs::String cad;


int main(int argc, char **argv)
{
    ros::init(argc, argv, "inf_personal_usuario");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<trabajo::inf_personal_usuario>("inf_pers_topic", 1000);
    ROS_INFO("nodo inf_personal_usuario iniciado!");

    string nombre;
    int edad;
    //string idiomas;
    int aux=0;
    //string auxIdioma;    

    while (ros::ok())
    {
        ROS_INFO("Introducir informacion personal usuario");
        cout<<"Introducir nombre: ";
        getline(cin,nombre);
        //cad.data = nombre;

        datos.nombre = nombre;
        cout<<"Introducir edad: ";
        cin >> edad;
        datos.edad = edad;
        cout<<"Cuantos idiomas habla?\n";
        cin >> aux;
        //vector<string> idiomas[aux];
        int i = 0;
        string auxIdioma;
        while(i<aux)
        {
            cout<<"Introducir idioma "+(i+1);
            getline(cin,auxIdioma);
            cad.data = auxIdioma;
            cadena[0] = cad;
            i+= 1;
        }
        
        datos.idiomas = &cadena;
        pub.publish(datos);
    }
    return 0;
}