# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gpio: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igpio:/home/ubuntu/m100-ros-test/workspace/src/gpio/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gpio_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg" NAME_WE)
add_custom_target(_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpio" "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gpio
  "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpio
)

### Generating Services

### Generating Module File
_generate_module_cpp(gpio
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpio
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gpio_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gpio_generate_messages gpio_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg" NAME_WE)
add_dependencies(gpio_generate_messages_cpp _gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpio_gencpp)
add_dependencies(gpio_gencpp gpio_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpio_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gpio
  "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpio
)

### Generating Services

### Generating Module File
_generate_module_lisp(gpio
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpio
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gpio_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gpio_generate_messages gpio_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg" NAME_WE)
add_dependencies(gpio_generate_messages_lisp _gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpio_genlisp)
add_dependencies(gpio_genlisp gpio_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpio_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gpio
  "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpio
)

### Generating Services

### Generating Module File
_generate_module_py(gpio
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpio
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gpio_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gpio_generate_messages gpio_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/m100-ros-test/workspace/src/gpio/msg/msg_gpio.msg" NAME_WE)
add_dependencies(gpio_generate_messages_py _gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpio_genpy)
add_dependencies(gpio_genpy gpio_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpio_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpio
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpio
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpio)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpio\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpio
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
