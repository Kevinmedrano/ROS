# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kevin/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kevin/catkin_ws/build

# Include any dependencies generated for this target.
include practicas/CMakeFiles/nodo_servidor.dir/depend.make

# Include the progress variables for this target.
include practicas/CMakeFiles/nodo_servidor.dir/progress.make

# Include the compile flags for this target's objects.
include practicas/CMakeFiles/nodo_servidor.dir/flags.make

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o: practicas/CMakeFiles/nodo_servidor.dir/flags.make
practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o: /home/kevin/catkin_ws/src/practicas/src/nodo_servidor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o"
	cd /home/kevin/catkin_ws/build/practicas && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o -c /home/kevin/catkin_ws/src/practicas/src/nodo_servidor.cpp

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.i"
	cd /home/kevin/catkin_ws/build/practicas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/catkin_ws/src/practicas/src/nodo_servidor.cpp > CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.i

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.s"
	cd /home/kevin/catkin_ws/build/practicas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/catkin_ws/src/practicas/src/nodo_servidor.cpp -o CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.s

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.requires:

.PHONY : practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.requires

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.provides: practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.requires
	$(MAKE) -f practicas/CMakeFiles/nodo_servidor.dir/build.make practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.provides.build
.PHONY : practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.provides

practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.provides.build: practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o


# Object files for target nodo_servidor
nodo_servidor_OBJECTS = \
"CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o"

# External object files for target nodo_servidor
nodo_servidor_EXTERNAL_OBJECTS =

/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: practicas/CMakeFiles/nodo_servidor.dir/build.make
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/libroscpp.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/librosconsole.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/librostime.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /opt/ros/kinetic/lib/libcpp_common.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor: practicas/CMakeFiles/nodo_servidor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor"
	cd /home/kevin/catkin_ws/build/practicas && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nodo_servidor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
practicas/CMakeFiles/nodo_servidor.dir/build: /home/kevin/catkin_ws/devel/lib/practicas/nodo_servidor

.PHONY : practicas/CMakeFiles/nodo_servidor.dir/build

practicas/CMakeFiles/nodo_servidor.dir/requires: practicas/CMakeFiles/nodo_servidor.dir/src/nodo_servidor.cpp.o.requires

.PHONY : practicas/CMakeFiles/nodo_servidor.dir/requires

practicas/CMakeFiles/nodo_servidor.dir/clean:
	cd /home/kevin/catkin_ws/build/practicas && $(CMAKE_COMMAND) -P CMakeFiles/nodo_servidor.dir/cmake_clean.cmake
.PHONY : practicas/CMakeFiles/nodo_servidor.dir/clean

practicas/CMakeFiles/nodo_servidor.dir/depend:
	cd /home/kevin/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/catkin_ws/src /home/kevin/catkin_ws/src/practicas /home/kevin/catkin_ws/build /home/kevin/catkin_ws/build/practicas /home/kevin/catkin_ws/build/practicas/CMakeFiles/nodo_servidor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : practicas/CMakeFiles/nodo_servidor.dir/depend

