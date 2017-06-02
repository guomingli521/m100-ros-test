# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vedio: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ivedio:/home/ubuntu/catkin_ws/src/vedio/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vedio_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg" NAME_WE)
add_custom_target(_vedio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vedio" "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg" NAME_WE)
add_custom_target(_vedio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vedio" "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg" NAME_WE)
add_custom_target(_vedio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vedio" "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio
)
_generate_msg_cpp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio
)
_generate_msg_cpp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio
)

### Generating Services

### Generating Module File
_generate_module_cpp(vedio
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vedio_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vedio_generate_messages vedio_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg" NAME_WE)
add_dependencies(vedio_generate_messages_cpp _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg" NAME_WE)
add_dependencies(vedio_generate_messages_cpp _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg" NAME_WE)
add_dependencies(vedio_generate_messages_cpp _vedio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vedio_gencpp)
add_dependencies(vedio_gencpp vedio_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vedio_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio
)
_generate_msg_lisp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio
)
_generate_msg_lisp(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio
)

### Generating Services

### Generating Module File
_generate_module_lisp(vedio
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vedio_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vedio_generate_messages vedio_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg" NAME_WE)
add_dependencies(vedio_generate_messages_lisp _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg" NAME_WE)
add_dependencies(vedio_generate_messages_lisp _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg" NAME_WE)
add_dependencies(vedio_generate_messages_lisp _vedio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vedio_genlisp)
add_dependencies(vedio_genlisp vedio_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vedio_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio
)
_generate_msg_py(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio
)
_generate_msg_py(vedio
  "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio
)

### Generating Services

### Generating Module File
_generate_module_py(vedio
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vedio_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vedio_generate_messages vedio_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_bomb.msg" NAME_WE)
add_dependencies(vedio_generate_messages_py _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_xy.msg" NAME_WE)
add_dependencies(vedio_generate_messages_py _vedio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vedio/msg/msg_led.msg" NAME_WE)
add_dependencies(vedio_generate_messages_py _vedio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vedio_genpy)
add_dependencies(vedio_genpy vedio_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vedio_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vedio
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vedio
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vedio
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
