# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "practicas: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipracticas:/home/kevin/catkin_ws/src/practicas/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(practicas_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_custom_target(_practicas_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "practicas" "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" ""
)

get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_custom_target(_practicas_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "practicas" "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(practicas
  "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practicas
)

### Generating Services
_generate_srv_cpp(practicas
  "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practicas
)

### Generating Module File
_generate_module_cpp(practicas
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practicas
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(practicas_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(practicas_generate_messages practicas_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_dependencies(practicas_generate_messages_cpp _practicas_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_dependencies(practicas_generate_messages_cpp _practicas_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practicas_gencpp)
add_dependencies(practicas_gencpp practicas_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practicas_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(practicas
  "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practicas
)

### Generating Services
_generate_srv_eus(practicas
  "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practicas
)

### Generating Module File
_generate_module_eus(practicas
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practicas
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(practicas_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(practicas_generate_messages practicas_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_dependencies(practicas_generate_messages_eus _practicas_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_dependencies(practicas_generate_messages_eus _practicas_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practicas_geneus)
add_dependencies(practicas_geneus practicas_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practicas_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(practicas
  "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practicas
)

### Generating Services
_generate_srv_lisp(practicas
  "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practicas
)

### Generating Module File
_generate_module_lisp(practicas
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practicas
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(practicas_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(practicas_generate_messages practicas_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_dependencies(practicas_generate_messages_lisp _practicas_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_dependencies(practicas_generate_messages_lisp _practicas_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practicas_genlisp)
add_dependencies(practicas_genlisp practicas_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practicas_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(practicas
  "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practicas
)

### Generating Services
_generate_srv_nodejs(practicas
  "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practicas
)

### Generating Module File
_generate_module_nodejs(practicas
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practicas
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(practicas_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(practicas_generate_messages practicas_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_dependencies(practicas_generate_messages_nodejs _practicas_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_dependencies(practicas_generate_messages_nodejs _practicas_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practicas_gennodejs)
add_dependencies(practicas_gennodejs practicas_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practicas_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(practicas
  "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas
)

### Generating Services
_generate_srv_py(practicas
  "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas
)

### Generating Module File
_generate_module_py(practicas
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(practicas_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(practicas_generate_messages practicas_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/msg/mensajeTest.msg" NAME_WE)
add_dependencies(practicas_generate_messages_py _practicas_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/practicas/srv/tipo_servicio.srv" NAME_WE)
add_dependencies(practicas_generate_messages_py _practicas_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practicas_genpy)
add_dependencies(practicas_genpy practicas_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practicas_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practicas)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practicas
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(practicas_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practicas)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practicas
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(practicas_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practicas)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practicas
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(practicas_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practicas)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practicas
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(practicas_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practicas
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(practicas_generate_messages_py std_msgs_generate_messages_py)
endif()
