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
include _deps/imtui-build/src/CMakeFiles/imtui-core.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/imtui-build/src/CMakeFiles/imtui-core.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/imtui-build/src/CMakeFiles/imtui-core.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/imtui-build/src/CMakeFiles/imtui-core.dir/flags.make

_deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o: _deps/imtui-build/src/CMakeFiles/imtui-core.dir/flags.make
_deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o: _deps/imtui-src/src/imtui-impl-text.cpp
_deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o: _deps/imtui-build/src/CMakeFiles/imtui-core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o -MF CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o.d -o CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/src/imtui-impl-text.cpp

_deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/src/imtui-impl-text.cpp > CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.i

_deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/src/imtui-impl-text.cpp -o CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.s

# Object files for target imtui-core
imtui__core_OBJECTS = \
"CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o"

# External object files for target imtui-core
imtui__core_EXTERNAL_OBJECTS =

_deps/imtui-build/src/libimtui-core.a: _deps/imtui-build/src/CMakeFiles/imtui-core.dir/imtui-impl-text.cpp.o
_deps/imtui-build/src/libimtui-core.a: _deps/imtui-build/src/CMakeFiles/imtui-core.dir/build.make
_deps/imtui-build/src/libimtui-core.a: _deps/imtui-build/src/CMakeFiles/imtui-core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libimtui-core.a"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && $(CMAKE_COMMAND) -P CMakeFiles/imtui-core.dir/cmake_clean_target.cmake
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imtui-core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/imtui-build/src/CMakeFiles/imtui-core.dir/build: _deps/imtui-build/src/libimtui-core.a
.PHONY : _deps/imtui-build/src/CMakeFiles/imtui-core.dir/build

_deps/imtui-build/src/CMakeFiles/imtui-core.dir/clean:
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src && $(CMAKE_COMMAND) -P CMakeFiles/imtui-core.dir/cmake_clean.cmake
.PHONY : _deps/imtui-build/src/CMakeFiles/imtui-core.dir/clean

_deps/imtui-build/src/CMakeFiles/imtui-core.dir/depend:
	cd /home/matthewalgo/Projects/picr/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/picr/executable_sources /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/src /home/matthewalgo/Projects/picr/build/build_executable /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/src/CMakeFiles/imtui-core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/imtui-build/src/CMakeFiles/imtui-core.dir/depend

