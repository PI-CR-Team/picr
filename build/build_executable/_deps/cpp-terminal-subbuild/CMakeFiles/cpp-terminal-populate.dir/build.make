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
CMAKE_SOURCE_DIR = /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild

# Utility rule file for cpp-terminal-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cpp-terminal-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp-terminal-populate.dir/progress.make

CMakeFiles/cpp-terminal-populate: CMakeFiles/cpp-terminal-populate-complete

CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-mkdir
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-patch
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-build
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install
CMakeFiles/cpp-terminal-populate-complete: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cpp-terminal-populate'"
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles/cpp-terminal-populate-complete
	/usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-done

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update:
.PHONY : cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-build: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E echo_append
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-build

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure: cpp-terminal-populate-prefix/tmp/cpp-terminal-populate-cfgcmd.txt
cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E echo_append
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-gitinfo.txt
cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps && /usr/bin/cmake -P /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/tmp/cpp-terminal-populate-gitclone.cmake
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps && /usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E echo_append
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cpp-terminal-populate'"
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp
	/usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-mkdir

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-patch: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cpp-terminal-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-patch

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update:
.PHONY : cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-test: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E echo_append
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build && /usr/bin/cmake -E touch /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-test

cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'cpp-terminal-populate'"
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src && /usr/bin/cmake -P /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/cpp-terminal-populate-prefix/tmp/cpp-terminal-populate-gitupdate.cmake

cpp-terminal-populate: CMakeFiles/cpp-terminal-populate
cpp-terminal-populate: CMakeFiles/cpp-terminal-populate-complete
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-build
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-configure
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-download
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-install
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-mkdir
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-patch
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-test
cpp-terminal-populate: cpp-terminal-populate-prefix/src/cpp-terminal-populate-stamp/cpp-terminal-populate-update
cpp-terminal-populate: CMakeFiles/cpp-terminal-populate.dir/build.make
.PHONY : cpp-terminal-populate

# Rule to build all files generated by this target.
CMakeFiles/cpp-terminal-populate.dir/build: cpp-terminal-populate
.PHONY : CMakeFiles/cpp-terminal-populate.dir/build

CMakeFiles/cpp-terminal-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp-terminal-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp-terminal-populate.dir/clean

CMakeFiles/cpp-terminal-populate.dir/depend:
	cd /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-subbuild/CMakeFiles/cpp-terminal-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp-terminal-populate.dir/depend

