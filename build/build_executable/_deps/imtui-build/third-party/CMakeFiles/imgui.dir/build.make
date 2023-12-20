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
include _deps/imtui-build/third-party/CMakeFiles/imgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/imtui-build/third-party/CMakeFiles/imgui.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/imtui-build/third-party/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/imtui-build/third-party/CMakeFiles/imgui.dir/flags.make

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/flags.make
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o: _deps/imtui-src/third-party/imgui/imgui/imgui.cpp
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui.cpp

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.i

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.s

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/flags.make
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o: _deps/imtui-src/third-party/imgui/imgui/imgui_draw.cpp
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_draw.cpp

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.i

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.s

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/flags.make
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o: _deps/imtui-src/third-party/imgui/imgui/imgui_demo.cpp
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_demo.cpp

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_demo.cpp > CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.i

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_demo.cpp -o CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.s

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/flags.make
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o: _deps/imtui-src/third-party/imgui/imgui/imgui_widgets.cpp
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_widgets.cpp

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_widgets.cpp > CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.i

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party/imgui/imgui/imgui_widgets.cpp -o CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui.cpp.o
_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_draw.cpp.o
_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_demo.cpp.o
_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/imgui/imgui/imgui_widgets.cpp.o
_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/build.make
_deps/imtui-build/third-party/libimgui.so: _deps/imtui-build/third-party/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libimgui.so"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/imtui-build/third-party/CMakeFiles/imgui.dir/build: _deps/imtui-build/third-party/libimgui.so
.PHONY : _deps/imtui-build/third-party/CMakeFiles/imgui.dir/build

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/clean:
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : _deps/imtui-build/third-party/CMakeFiles/imgui.dir/clean

_deps/imtui-build/third-party/CMakeFiles/imgui.dir/depend:
	cd /home/matthewalgo/Projects/picr/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/picr/executable_sources /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-src/third-party /home/matthewalgo/Projects/picr/build/build_executable /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party /home/matthewalgo/Projects/picr/build/build_executable/_deps/imtui-build/third-party/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/imtui-build/third-party/CMakeFiles/imgui.dir/depend

