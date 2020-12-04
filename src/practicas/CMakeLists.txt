cmake_minimum_required(VERSION 3.0.2)
project(practicas)


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
   mensajeTest.msg
#   Message2.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   tipo_servicio.srv
#   Service2.srv
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

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)



# Archivos ejecutables de c++
add_executable(nodo_emisor src/nodo_emisor.cpp)
add_executable(nodo_receptor src/nodo_receptor.cpp)
add_executable(nodo_servidor src/nodo_servidor.cpp)
add_executable(nodo_cliente src/nodo_cliente.cpp)

# Dependencias para generar cabeceras
add_dependencies(nodo_emisor practicas_generate_messages_cpp ${catkin_EXPORTED_TARGETS})
add_dependencies(nodo_receptor practicas_generate_messages_cpp ${catkin_EXPORTED_TARGETS})
add_dependencies(nodo_servidor practicas_generate_messages_cpp ${catkin_EXPORTED_TARGETS})
add_dependencies(nodo_cliente practicas_generate_messages_cpp ${catkin_EXPORTED_TARGETS})

# Librerias 
target_link_libraries(nodo_emisor
    ${catkin_LIBRARIES}
  )
  
target_link_libraries(nodo_receptor
    ${catkin_LIBRARIES}
)
target_link_libraries(nodo_servidor
    ${catkin_LIBRARIES}
)
target_link_libraries(nodo_cliente
    ${catkin_LIBRARIES}
)




#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# catkin_install_python(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
# install(TARGETS ${PROJECT_NAME}_node
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark libraries for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html
# install(TARGETS ${PROJECT_NAME}
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_practicas.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
