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
include _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/conversion.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/conversion.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/conversion.cpp > CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/conversion.cpp -o CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/args.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/args.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/args.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/args.cpp > CMakeFiles/cpp-terminal-platforms.dir/args.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/args.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/args.cpp -o CMakeFiles/cpp-terminal-platforms.dir/args.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/terminal.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminal.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminal.cpp > CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminal.cpp -o CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/tty.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/tty.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/tty.cpp > CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/tty.cpp -o CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/terminfo.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminfo.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminfo.cpp > CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/terminfo.cpp -o CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/input.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/input.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/input.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/input.cpp > CMakeFiles/cpp-terminal-platforms.dir/input.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/input.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/input.cpp -o CMakeFiles/cpp-terminal-platforms.dir/input.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/screen.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/screen.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/screen.cpp > CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/screen.cpp -o CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/cursor.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/cursor.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/cursor.cpp > CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/cursor.cpp -o CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/file.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/file.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/file.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/file.cpp > CMakeFiles/cpp-terminal-platforms.dir/file.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/file.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/file.cpp -o CMakeFiles/cpp-terminal-platforms.dir/file.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/env.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/env.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/env.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/env.cpp > CMakeFiles/cpp-terminal-platforms.dir/env.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/env.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/env.cpp -o CMakeFiles/cpp-terminal-platforms.dir/env.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/blocking_queue.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/blocking_queue.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/blocking_queue.cpp > CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/blocking_queue.cpp -o CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.s

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/flags.make
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o: _deps/cpp-terminal-src/cpp-terminal/platforms/sigwinch.cpp
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o -MF CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o.d -o CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o -c /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/sigwinch.cpp

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.i"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/sigwinch.cpp > CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.i

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.s"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/sigwinch.cpp -o CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.s

# Object files for target cpp-terminal-platforms
cpp__terminal__platforms_OBJECTS = \
"CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o" \
"CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o"

# External object files for target cpp-terminal-platforms
cpp__terminal__platforms_EXTERNAL_OBJECTS =

_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/conversion.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/args.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminal.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/tty.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/terminfo.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/input.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/screen.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/cursor.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/file.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/env.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/blocking_queue.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/sigwinch.cpp.o
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/build.make
_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a: _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libcpp-terminal-platforms.a"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && $(CMAKE_COMMAND) -P CMakeFiles/cpp-terminal-platforms.dir/cmake_clean_target.cmake
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-terminal-platforms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/build: _deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a
.PHONY : _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/build

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/clean:
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms && $(CMAKE_COMMAND) -P CMakeFiles/cpp-terminal-platforms.dir/cmake_clean.cmake
.PHONY : _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/clean

_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/depend:
	cd /home/matthewalgo/Projects/picr/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/picr/executable_sources /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms /home/matthewalgo/Projects/picr/build/build_executable /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/cpp-terminal-build/cpp-terminal/platforms/CMakeFiles/cpp-terminal-platforms.dir/depend

