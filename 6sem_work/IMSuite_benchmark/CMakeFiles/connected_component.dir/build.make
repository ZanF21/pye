# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zz/personal/pye/IMSuite_benchmark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zz/personal/pye/IMSuite_benchmark

# Include any dependencies generated for this target.
include CMakeFiles/connected_component.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/connected_component.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/connected_component.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/connected_component.dir/flags.make

CMakeFiles/connected_component.dir/connected_component.c.o: CMakeFiles/connected_component.dir/flags.make
CMakeFiles/connected_component.dir/connected_component.c.o: connected_component.c
CMakeFiles/connected_component.dir/connected_component.c.o: CMakeFiles/connected_component.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zz/personal/pye/IMSuite_benchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/connected_component.dir/connected_component.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/connected_component.dir/connected_component.c.o -MF CMakeFiles/connected_component.dir/connected_component.c.o.d -o CMakeFiles/connected_component.dir/connected_component.c.o -c /home/zz/personal/pye/IMSuite_benchmark/connected_component.c

CMakeFiles/connected_component.dir/connected_component.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/connected_component.dir/connected_component.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zz/personal/pye/IMSuite_benchmark/connected_component.c > CMakeFiles/connected_component.dir/connected_component.c.i

CMakeFiles/connected_component.dir/connected_component.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/connected_component.dir/connected_component.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zz/personal/pye/IMSuite_benchmark/connected_component.c -o CMakeFiles/connected_component.dir/connected_component.c.s

# Object files for target connected_component
connected_component_OBJECTS = \
"CMakeFiles/connected_component.dir/connected_component.c.o"

# External object files for target connected_component
connected_component_EXTERNAL_OBJECTS =

connected_component: CMakeFiles/connected_component.dir/connected_component.c.o
connected_component: CMakeFiles/connected_component.dir/build.make
connected_component: ompdist/libompdist.a
connected_component: CMakeFiles/connected_component.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zz/personal/pye/IMSuite_benchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable connected_component"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/connected_component.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/connected_component.dir/build: connected_component
.PHONY : CMakeFiles/connected_component.dir/build

CMakeFiles/connected_component.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/connected_component.dir/cmake_clean.cmake
.PHONY : CMakeFiles/connected_component.dir/clean

CMakeFiles/connected_component.dir/depend:
	cd /home/zz/personal/pye/IMSuite_benchmark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zz/personal/pye/IMSuite_benchmark /home/zz/personal/pye/IMSuite_benchmark /home/zz/personal/pye/IMSuite_benchmark /home/zz/personal/pye/IMSuite_benchmark /home/zz/personal/pye/IMSuite_benchmark/CMakeFiles/connected_component.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/connected_component.dir/depend
