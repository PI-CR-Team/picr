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
CMAKE_SOURCE_DIR = /home/matthewalgo/Projects/CPPBuildTemplate/executable_sources

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable

# Include any dependencies generated for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/flags.make

_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o: _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/flags.make
_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o: _deps/cpp-terminal-src/examples/prompt_not_immediate.cpp
_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o: _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o"
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o -MF CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o.d -o CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o -c /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-src/examples/prompt_not_immediate.cpp

_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.i"
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-src/examples/prompt_not_immediate.cpp > CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.i

_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.s"
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-src/examples/prompt_not_immediate.cpp -o CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.s

# Object files for target prompt_not_immediate
prompt_not_immediate_OBJECTS = \
"CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o"

# External object files for target prompt_not_immediate
prompt_not_immediate_EXTERNAL_OBJECTS =

_deps/cpp-terminal-build/examples/prompt_not_immediate: _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/prompt_not_immediate.cpp.o
_deps/cpp-terminal-build/examples/prompt_not_immediate: _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/build.make
_deps/cpp-terminal-build/examples/prompt_not_immediate: _deps/cpp-terminal-build/cpp-terminal/libcpp-terminal.a
_deps/cpp-terminal-build/examples/prompt_not_immediate: _deps/cpp-terminal-build/cpp-terminal/private/libcpp-terminal-private.a
_deps/cpp-terminal-build/examples/prompt_not_immediate: _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable prompt_not_immediate"
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prompt_not_immediate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/build: _deps/cpp-terminal-build/examples/prompt_not_immediate
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/build

_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/clean:
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples && $(CMAKE_COMMAND) -P CMakeFiles/prompt_not_immediate.dir/cmake_clean.cmake
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/clean

_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/depend:
	cd /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/CPPBuildTemplate/executable_sources /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-src/examples /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples /home/matthewalgo/Projects/CPPBuildTemplate/build/build_executable/_deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/cpp-terminal-build/examples/CMakeFiles/prompt_not_immediate.dir/depend

