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
CMAKE_SOURCE_DIR = /home/stegan/Documents/picr/executable_sources

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stegan/Documents/picr/build/build_executable

# Include any dependencies generated for this target.
include CMakeFiles/PiCrExecutable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PiCrExecutable.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PiCrExecutable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PiCrExecutable.dir/flags.make

CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o: /home/stegan/Documents/picr/executable_sources/source/auto_file_saver.cpp
CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/auto_file_saver.cpp

CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/auto_file_saver.cpp > CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.i

CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/auto_file_saver.cpp -o CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.s

CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o: /home/stegan/Documents/picr/executable_sources/source/command_parser.cpp
CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/command_parser.cpp

CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/command_parser.cpp > CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.i

CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/command_parser.cpp -o CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.s

CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o: /home/stegan/Documents/picr/executable_sources/source/editor.cpp
CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/editor.cpp

CMakeFiles/PiCrExecutable.dir/source/editor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/editor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/editor.cpp > CMakeFiles/PiCrExecutable.dir/source/editor.cpp.i

CMakeFiles/PiCrExecutable.dir/source/editor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/editor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/editor.cpp -o CMakeFiles/PiCrExecutable.dir/source/editor.cpp.s

CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o: /home/stegan/Documents/picr/executable_sources/source/file_reader.cpp
CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/file_reader.cpp

CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/file_reader.cpp > CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.i

CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/file_reader.cpp -o CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.s

CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o: /home/stegan/Documents/picr/executable_sources/source/file_writer.cpp
CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/file_writer.cpp

CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/file_writer.cpp > CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.i

CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/file_writer.cpp -o CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.s

CMakeFiles/PiCrExecutable.dir/source/line.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/line.cpp.o: /home/stegan/Documents/picr/executable_sources/source/line.cpp
CMakeFiles/PiCrExecutable.dir/source/line.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/line.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/line.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/line.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/line.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/line.cpp

CMakeFiles/PiCrExecutable.dir/source/line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/line.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/line.cpp > CMakeFiles/PiCrExecutable.dir/source/line.cpp.i

CMakeFiles/PiCrExecutable.dir/source/line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/line.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/line.cpp -o CMakeFiles/PiCrExecutable.dir/source/line.cpp.s

CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o: /home/stegan/Documents/picr/executable_sources/source/lock_file.cpp
CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/lock_file.cpp

CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/lock_file.cpp > CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.i

CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/lock_file.cpp -o CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.s

CMakeFiles/PiCrExecutable.dir/source/main.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/main.cpp.o: /home/stegan/Documents/picr/executable_sources/source/main.cpp
CMakeFiles/PiCrExecutable.dir/source/main.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/main.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/main.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/main.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/main.cpp

CMakeFiles/PiCrExecutable.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/main.cpp > CMakeFiles/PiCrExecutable.dir/source/main.cpp.i

CMakeFiles/PiCrExecutable.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/main.cpp -o CMakeFiles/PiCrExecutable.dir/source/main.cpp.s

CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o: CMakeFiles/PiCrExecutable.dir/flags.make
CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o: /home/stegan/Documents/picr/executable_sources/source/terminal_renderer.cpp
CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o: CMakeFiles/PiCrExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o -MF CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o.d -o CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o -c /home/stegan/Documents/picr/executable_sources/source/terminal_renderer.cpp

CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stegan/Documents/picr/executable_sources/source/terminal_renderer.cpp > CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.i

CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stegan/Documents/picr/executable_sources/source/terminal_renderer.cpp -o CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.s

# Object files for target PiCrExecutable
PiCrExecutable_OBJECTS = \
"CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/line.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/main.cpp.o" \
"CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o"

# External object files for target PiCrExecutable
PiCrExecutable_EXTERNAL_OBJECTS =

PiCr: CMakeFiles/PiCrExecutable.dir/source/auto_file_saver.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/command_parser.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/editor.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/file_reader.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/file_writer.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/line.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/lock_file.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/main.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/source/terminal_renderer.cpp.o
PiCr: CMakeFiles/PiCrExecutable.dir/build.make
PiCr: _deps/ftxui-build/libftxui-component.so.5.0.0
PiCr: _deps/sfml-build/lib/libsfml-graphics.so.2.5.1
PiCr: _deps/sfml-build/lib/libsfml-audio.so.2.5.1
PiCr: _deps/sfml-build/lib/libsfml-network.so.2.5.1
PiCr: _deps/ftxui-build/libftxui-dom.so.5.0.0
PiCr: _deps/ftxui-build/libftxui-screen.so.5.0.0
PiCr: _deps/sfml-build/lib/libsfml-window.so.2.5.1
PiCr: _deps/sfml-build/lib/libsfml-system.so.2.5.1
PiCr: CMakeFiles/PiCrExecutable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stegan/Documents/picr/build/build_executable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable PiCr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PiCrExecutable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PiCrExecutable.dir/build: PiCr
.PHONY : CMakeFiles/PiCrExecutable.dir/build

CMakeFiles/PiCrExecutable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PiCrExecutable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PiCrExecutable.dir/clean

CMakeFiles/PiCrExecutable.dir/depend:
	cd /home/stegan/Documents/picr/build/build_executable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stegan/Documents/picr/executable_sources /home/stegan/Documents/picr/executable_sources /home/stegan/Documents/picr/build/build_executable /home/stegan/Documents/picr/build/build_executable /home/stegan/Documents/picr/build/build_executable/CMakeFiles/PiCrExecutable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PiCrExecutable.dir/depend

