# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trabajo: 3 messages, 1 services")

set(MSG_I_FLAGS "-Itrabajo:/home/kevin/catkin_ws/src/trabajo/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trabajo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" "trabajo/pos_usuario:trabajo/inf_personal_usuario"
)

get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" ""
)

get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" ""
)

get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg;/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)
_generate_msg_cpp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)
_generate_msg_cpp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)

### Generating Services
_generate_srv_cpp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)

### Generating Module File
_generate_module_cpp(trabajo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trabajo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_gencpp)
add_dependencies(trabajo_gencpp trabajo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg;/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
)
_generate_msg_eus(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
)
_generate_msg_eus(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
)

### Generating Services
_generate_srv_eus(trabajo
  "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
)

### Generating Module File
_generate_module_eus(trabajo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trabajo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_eus _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_dependencies(trabajo_generate_messages_eus _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_eus _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_eus _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_geneus)
add_dependencies(trabajo_geneus trabajo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg;/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)
_generate_msg_lisp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)
_generate_msg_lisp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)

### Generating Services
_generate_srv_lisp(trabajo
  "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)

### Generating Module File
_generate_module_lisp(trabajo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trabajo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_genlisp)
add_dependencies(trabajo_genlisp trabajo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg;/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
)
_generate_msg_nodejs(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
)
_generate_msg_nodejs(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
)

### Generating Services
_generate_srv_nodejs(trabajo
  "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
)

### Generating Module File
_generate_module_nodejs(trabajo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trabajo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_nodejs _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_dependencies(trabajo_generate_messages_nodejs _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_nodejs _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_nodejs _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_gennodejs)
add_dependencies(trabajo_gennodejs trabajo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg;/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)
_generate_msg_py(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)
_generate_msg_py(trabajo
  "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)

### Generating Services
_generate_srv_py(trabajo
  "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)

### Generating Module File
_generate_module_py(trabajo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trabajo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/srv/multiplicador.srv" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kevin/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_genpy)
add_dependencies(trabajo_genpy trabajo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trabajo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trabajo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trabajo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trabajo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trabajo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trabajo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trabajo_generate_messages_py std_msgs_generate_messages_py)
endif()
