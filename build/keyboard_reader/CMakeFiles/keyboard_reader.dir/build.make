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
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tudeng/silvar-rtech/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tudeng/silvar-rtech/build

# Include any dependencies generated for this target.
include keyboard_reader/CMakeFiles/keyboard_reader.dir/depend.make

# Include the progress variables for this target.
include keyboard_reader/CMakeFiles/keyboard_reader.dir/progress.make

# Include the compile flags for this target's objects.
include keyboard_reader/CMakeFiles/keyboard_reader.dir/flags.make

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o: keyboard_reader/CMakeFiles/keyboard_reader.dir/flags.make
keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o: /home/tudeng/silvar-rtech/src/keyboard_reader/src/keyboard_reader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tudeng/silvar-rtech/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o"
	cd /home/tudeng/silvar-rtech/build/keyboard_reader && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o -c /home/tudeng/silvar-rtech/src/keyboard_reader/src/keyboard_reader.cpp

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.i"
	cd /home/tudeng/silvar-rtech/build/keyboard_reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tudeng/silvar-rtech/src/keyboard_reader/src/keyboard_reader.cpp > CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.i

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.s"
	cd /home/tudeng/silvar-rtech/build/keyboard_reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tudeng/silvar-rtech/src/keyboard_reader/src/keyboard_reader.cpp -o CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.s

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.requires:
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.requires

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.provides: keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.requires
	$(MAKE) -f keyboard_reader/CMakeFiles/keyboard_reader.dir/build.make keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.provides.build
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.provides

keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.provides.build: keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o

# Object files for target keyboard_reader
keyboard_reader_OBJECTS = \
"CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o"

# External object files for target keyboard_reader
keyboard_reader_EXTERNAL_OBJECTS =

/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: keyboard_reader/CMakeFiles/keyboard_reader.dir/build.make
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/libroscpp.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/librosconsole.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/liblog4cxx.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/librostime.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /opt/ros/indigo/lib/libcpp_common.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so: keyboard_reader/CMakeFiles/keyboard_reader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so"
	cd /home/tudeng/silvar-rtech/build/keyboard_reader && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/keyboard_reader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
keyboard_reader/CMakeFiles/keyboard_reader.dir/build: /home/tudeng/silvar-rtech/devel/lib/libkeyboard_reader.so
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/build

keyboard_reader/CMakeFiles/keyboard_reader.dir/requires: keyboard_reader/CMakeFiles/keyboard_reader.dir/src/keyboard_reader.cpp.o.requires
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/requires

keyboard_reader/CMakeFiles/keyboard_reader.dir/clean:
	cd /home/tudeng/silvar-rtech/build/keyboard_reader && $(CMAKE_COMMAND) -P CMakeFiles/keyboard_reader.dir/cmake_clean.cmake
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/clean

keyboard_reader/CMakeFiles/keyboard_reader.dir/depend:
	cd /home/tudeng/silvar-rtech/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tudeng/silvar-rtech/src /home/tudeng/silvar-rtech/src/keyboard_reader /home/tudeng/silvar-rtech/build /home/tudeng/silvar-rtech/build/keyboard_reader /home/tudeng/silvar-rtech/build/keyboard_reader/CMakeFiles/keyboard_reader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : keyboard_reader/CMakeFiles/keyboard_reader.dir/depend

