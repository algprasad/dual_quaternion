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
CMAKE_SOURCE_DIR = /home/socrob/TUB/dual_quaternion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/socrob/TUB/dual_quaternion/build

# Include any dependencies generated for this target.
include CMakeFiles/dual_quaternion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dual_quaternion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dual_quaternion.dir/flags.make

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o: CMakeFiles/dual_quaternion.dir/flags.make
CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o: ../QuaternionOperations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/socrob/TUB/dual_quaternion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o -c /home/socrob/TUB/dual_quaternion/QuaternionOperations.cpp

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/socrob/TUB/dual_quaternion/QuaternionOperations.cpp > CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.i

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/socrob/TUB/dual_quaternion/QuaternionOperations.cpp -o CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.s

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.requires:

.PHONY : CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.requires

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.provides: CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.requires
	$(MAKE) -f CMakeFiles/dual_quaternion.dir/build.make CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.provides.build
.PHONY : CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.provides

CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.provides.build: CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o


# Object files for target dual_quaternion
dual_quaternion_OBJECTS = \
"CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o"

# External object files for target dual_quaternion
dual_quaternion_EXTERNAL_OBJECTS =

libdual_quaternion.a: CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o
libdual_quaternion.a: CMakeFiles/dual_quaternion.dir/build.make
libdual_quaternion.a: CMakeFiles/dual_quaternion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/socrob/TUB/dual_quaternion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdual_quaternion.a"
	$(CMAKE_COMMAND) -P CMakeFiles/dual_quaternion.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dual_quaternion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dual_quaternion.dir/build: libdual_quaternion.a

.PHONY : CMakeFiles/dual_quaternion.dir/build

CMakeFiles/dual_quaternion.dir/requires: CMakeFiles/dual_quaternion.dir/QuaternionOperations.cpp.o.requires

.PHONY : CMakeFiles/dual_quaternion.dir/requires

CMakeFiles/dual_quaternion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dual_quaternion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dual_quaternion.dir/clean

CMakeFiles/dual_quaternion.dir/depend:
	cd /home/socrob/TUB/dual_quaternion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/socrob/TUB/dual_quaternion /home/socrob/TUB/dual_quaternion /home/socrob/TUB/dual_quaternion/build /home/socrob/TUB/dual_quaternion/build /home/socrob/TUB/dual_quaternion/build/CMakeFiles/dual_quaternion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dual_quaternion.dir/depend

