# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib

# Include any dependencies generated for this target.
include CMakeFiles/PiCrLibraries.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PiCrLibraries.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PiCrLibraries.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PiCrLibraries.dir/flags.make

CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o: CMakeFiles/PiCrLibraries.dir/flags.make
CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o: /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources/source/lib.cpp
CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o: CMakeFiles/PiCrLibraries.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o -MF CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o.d -o CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o -c /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources/source/lib.cpp

CMakeFiles/PiCrLibraries.dir/source/lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrLibraries.dir/source/lib.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources/source/lib.cpp > CMakeFiles/PiCrLibraries.dir/source/lib.cpp.i

CMakeFiles/PiCrLibraries.dir/source/lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrLibraries.dir/source/lib.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources/source/lib.cpp -o CMakeFiles/PiCrLibraries.dir/source/lib.cpp.s

# Object files for target PiCrLibraries
PiCrLibraries_OBJECTS = \
"CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o"

# External object files for target PiCrLibraries
PiCrLibraries_EXTERNAL_OBJECTS =

libPiCrLibraries.a: CMakeFiles/PiCrLibraries.dir/source/lib.cpp.o
libPiCrLibraries.a: CMakeFiles/PiCrLibraries.dir/build.make
libPiCrLibraries.a: CMakeFiles/PiCrLibraries.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libPiCrLibraries.a"
	$(CMAKE_COMMAND) -P CMakeFiles/PiCrLibraries.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PiCrLibraries.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PiCrLibraries.dir/build: libPiCrLibraries.a
.PHONY : CMakeFiles/PiCrLibraries.dir/build

CMakeFiles/PiCrLibraries.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PiCrLibraries.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PiCrLibraries.dir/clean

CMakeFiles/PiCrLibraries.dir/depend:
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources /home/matthewalgo/Projects/CPPBuildTemplate/lib_sources /home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib /home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib /home/matthewalgo/Projects/CPPBuildTemplate/build/build_lib/CMakeFiles/PiCrLibraries.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PiCrLibraries.dir/depend

