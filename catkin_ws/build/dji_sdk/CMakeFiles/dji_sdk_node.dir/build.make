# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/catkin_ws/build

# Include any dependencies generated for this target.
include dji_sdk/CMakeFiles/dji_sdk_node.dir/depend.make

# Include the progress variables for this target.
include dji_sdk/CMakeFiles/dji_sdk_node.dir/progress.make

# Include the compile flags for this target's objects.
include dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o: /home/ubuntu/catkin_ws/src/dji_sdk/src/dji_sdk_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o -c /home/ubuntu/catkin_ws/src/dji_sdk/src/dji_sdk_node.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/dji_sdk/src/dji_sdk_node.cpp > CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/dji_sdk/src/dji_sdk_node.cpp -o CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o: /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o -c /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_actions.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o: /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_services.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o -c /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_services.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_services.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_services.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o: /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o -c /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_main.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_main.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_main.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o: dji_sdk/CMakeFiles/dji_sdk_node.dir/flags.make
dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o: /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o -c /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp > CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.i

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/dji_sdk/src/modules/dji_sdk_node_mission.cpp -o CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.s

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires:
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires
	$(MAKE) -f dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides.build
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides

dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.provides.build: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o

# Object files for target dji_sdk_node
dji_sdk_node_OBJECTS = \
"CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o" \
"CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o"

# External object files for target dji_sdk_node
dji_sdk_node_EXTERNAL_OBJECTS =

/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/build.make
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libactionlib.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libroscpp.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/liblog4cxx.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/librostime.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /opt/ros/indigo/lib/libcpp_common.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: /home/ubuntu/catkin_ws/devel/lib/libdji_sdk_lib.a
/home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node: dji_sdk/CMakeFiles/dji_sdk_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node"
	cd /home/ubuntu/catkin_ws/build/dji_sdk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dji_sdk_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dji_sdk/CMakeFiles/dji_sdk_node.dir/build: /home/ubuntu/catkin_ws/devel/lib/dji_sdk/dji_sdk_node
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/build

dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/dji_sdk_node.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_actions.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_services.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_main.cpp.o.requires
dji_sdk/CMakeFiles/dji_sdk_node.dir/requires: dji_sdk/CMakeFiles/dji_sdk_node.dir/src/modules/dji_sdk_node_mission.cpp.o.requires
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/requires

dji_sdk/CMakeFiles/dji_sdk_node.dir/clean:
	cd /home/ubuntu/catkin_ws/build/dji_sdk && $(CMAKE_COMMAND) -P CMakeFiles/dji_sdk_node.dir/cmake_clean.cmake
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/clean

dji_sdk/CMakeFiles/dji_sdk_node.dir/depend:
	cd /home/ubuntu/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/catkin_ws/src /home/ubuntu/catkin_ws/src/dji_sdk /home/ubuntu/catkin_ws/build /home/ubuntu/catkin_ws/build/dji_sdk /home/ubuntu/catkin_ws/build/dji_sdk/CMakeFiles/dji_sdk_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dji_sdk/CMakeFiles/dji_sdk_node.dir/depend

