# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/joer/projects/DNDProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joer/projects/DNDProject/Debug

# Include any dependencies generated for this target.
include CMakeFiles/DND.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DND.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DND.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DND.dir/flags.make

CMakeFiles/DND.dir/main.cpp.o: CMakeFiles/DND.dir/flags.make
CMakeFiles/DND.dir/main.cpp.o: /home/joer/projects/DNDProject/main.cpp
CMakeFiles/DND.dir/main.cpp.o: CMakeFiles/DND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/projects/DNDProject/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DND.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DND.dir/main.cpp.o -MF CMakeFiles/DND.dir/main.cpp.o.d -o CMakeFiles/DND.dir/main.cpp.o -c /home/joer/projects/DNDProject/main.cpp

CMakeFiles/DND.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DND.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joer/projects/DNDProject/main.cpp > CMakeFiles/DND.dir/main.cpp.i

CMakeFiles/DND.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DND.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joer/projects/DNDProject/main.cpp -o CMakeFiles/DND.dir/main.cpp.s

CMakeFiles/DND.dir/src/Player.cpp.o: CMakeFiles/DND.dir/flags.make
CMakeFiles/DND.dir/src/Player.cpp.o: /home/joer/projects/DNDProject/src/Player.cpp
CMakeFiles/DND.dir/src/Player.cpp.o: CMakeFiles/DND.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/projects/DNDProject/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DND.dir/src/Player.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DND.dir/src/Player.cpp.o -MF CMakeFiles/DND.dir/src/Player.cpp.o.d -o CMakeFiles/DND.dir/src/Player.cpp.o -c /home/joer/projects/DNDProject/src/Player.cpp

CMakeFiles/DND.dir/src/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DND.dir/src/Player.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joer/projects/DNDProject/src/Player.cpp > CMakeFiles/DND.dir/src/Player.cpp.i

CMakeFiles/DND.dir/src/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DND.dir/src/Player.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joer/projects/DNDProject/src/Player.cpp -o CMakeFiles/DND.dir/src/Player.cpp.s

# Object files for target DND
DND_OBJECTS = \
"CMakeFiles/DND.dir/main.cpp.o" \
"CMakeFiles/DND.dir/src/Player.cpp.o"

# External object files for target DND
DND_EXTERNAL_OBJECTS =

DND: CMakeFiles/DND.dir/main.cpp.o
DND: CMakeFiles/DND.dir/src/Player.cpp.o
DND: CMakeFiles/DND.dir/build.make
DND: CMakeFiles/DND.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joer/projects/DNDProject/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable DND"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DND.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DND.dir/build: DND
.PHONY : CMakeFiles/DND.dir/build

CMakeFiles/DND.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DND.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DND.dir/clean

CMakeFiles/DND.dir/depend:
	cd /home/joer/projects/DNDProject/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joer/projects/DNDProject /home/joer/projects/DNDProject /home/joer/projects/DNDProject/Debug /home/joer/projects/DNDProject/Debug /home/joer/projects/DNDProject/Debug/CMakeFiles/DND.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DND.dir/depend

