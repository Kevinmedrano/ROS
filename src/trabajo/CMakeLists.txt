cmake_minimum_required(VERSION 3.0.2)
project(trabajo)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
add_message_files(
   FILES
   inf_personal_usuario.msg
   pos_usuario.msg
   usuario.msg
)

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   multiplicador.srv
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ executable
#add_executable(nodo_emocion_usuario src/emocion_usuario_nodo.cpp)
#add_executable(nodo_posicion_usuario src/posicion_usuario_nodo.cpp)
#dd_executable(nodo_informacion_personal src/informacion_personal_nodo.cpp)

## Add cmake target dependencies of the executable
#add_dependencies(nodo_pos_usuario trabajo_generate_message_cpp ${catkin_EXPORTED_TARGETS})
#add_dependencies(nodo_posicion_usuario trabajo_generate_message_cpp ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(nodo_emocion_usuario
#   ${catkin_LIBRARIES}
# )
# target_link_libraries(nodo_posicion_usuario
#   ${catkin_LIBRARIES}
# )
#target_link_libraries(nodo_informacion_personal
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

## Mark executable scripts (Python etc.) for installation
catkin_install_python(PROGRAMS scripts/emocion_usuario_nodo.py scripts/informacion_personal_nodo.py scripts/reloj_nodo.py 
   scripts/posicion_usuario_nodo.py scripts/empaquetador_nodo.py scripts/dialogo_nodo.py scripts/matematico_nodo.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

