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
CMAKE_SOURCE_DIR = /home/matthewalgo/Projects/picr/executable_sources

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthewalgo/Projects/picr/build/build_executable

# Include any dependencies generated for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/flags.make

_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o: _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/flags.make
_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o: _deps/cpp-terminal-src/examples/utf8.cpp
_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o: _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o -MF CMakeFiles/utf8.dir/utf8.cpp.o.d -o CMakeFiles/utf8.dir/utf8.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/examples/utf8.cpp

_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utf8.dir/utf8.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/examples/utf8.cpp > CMakeFiles/utf8.dir/utf8.cpp.i

_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utf8.dir/utf8.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/examples/utf8.cpp -o CMakeFiles/utf8.dir/utf8.cpp.s

# Object files for target utf8
utf8_OBJECTS = \
"CMakeFiles/utf8.dir/utf8.cpp.o"

# External object files for target utf8
utf8_EXTERNAL_OBJECTS =

_deps/cpp-terminal-build/examples/utf8: _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/utf8.cpp.o
_deps/cpp-terminal-build/examples/utf8: _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/build.make
_deps/cpp-terminal-build/examples/utf8: _deps/cpp-terminal-build/cpp-terminal/libcpp-terminal.a
_deps/cpp-terminal-build/examples/utf8: _deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a
_deps/cpp-terminal-build/examples/utf8: _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable utf8"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utf8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/build: _deps/cpp-terminal-build/examples/utf8
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/build

_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/clean:
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples && $(CMAKE_COMMAND) -P CMakeFiles/utf8.dir/cmake_clean.cmake
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/clean

_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/depend:
	cd /home/matthewalgo/Projects/picr/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/picr/executable_sources /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/examples /home/matthewalgo/Projects/picr/build/build_executable /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/utf8.dir/depend

