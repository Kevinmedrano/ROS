# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "holamundo: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iholamundo:/home/kevin/catkin_ws/src/holamundo/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(holamundo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_custom_target(_holamundo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "holamundo" "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(holamundo
  "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holamundo
)

### Generating Services

### Generating Module File
_generate_module_cpp(holamundo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holamundo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(holamundo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(holamundo_generate_messages holamundo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_dependencies(holamundo_generate_messages_cpp _holamundo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holamundo_gencpp)
add_dependencies(holamundo_gencpp holamundo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holamundo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(holamundo
  "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/holamundo
)

### Generating Services

### Generating Module File
_generate_module_eus(holamundo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/holamundo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(holamundo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(holamundo_generate_messages holamundo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_dependencies(holamundo_generate_messages_eus _holamundo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holamundo_geneus)
add_dependencies(holamundo_geneus holamundo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holamundo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(holamundo
  "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holamundo
)

### Generating Services

### Generating Module File
_generate_module_lisp(holamundo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holamundo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(holamundo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(holamundo_generate_messages holamundo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_dependencies(holamundo_generate_messages_lisp _holamundo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holamundo_genlisp)
add_dependencies(holamundo_genlisp holamundo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holamundo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(holamundo
  "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/holamundo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(holamundo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/holamundo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(holamundo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(holamundo_generate_messages holamundo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_dependencies(holamundo_generate_messages_nodejs _holamundo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holamundo_gennodejs)
add_dependencies(holamundo_gennodejs holamundo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holamundo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(holamundo
  "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holamundo
)

### Generating Services

### Generating Module File
_generate_module_py(holamundo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holamundo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(holamundo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(holamundo_generate_messages holamundo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/holamundo/msg/IoTSensor.msg" NAME_WE)
add_dependencies(holamundo_generate_messages_py _holamundo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holamundo_genpy)
add_dependencies(holamundo_genpy holamundo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holamundo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holamundo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holamundo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(holamundo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/holamundo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/holamundo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(holamundo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holamundo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holamundo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(holamundo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/holamundo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/holamundo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(holamundo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holamundo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holamundo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holamundo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(holamundo_generate_messages_py std_msgs_generate_messages_py)
endif()
