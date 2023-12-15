# Install script for directory: /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/libcpp-terminal.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cpp-terminal/platforms" TYPE FILE FILES
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/conversion.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/platforms/macros.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cpp-terminal" TYPE FILE FILES
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/focus.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/options.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/event.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/key.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/tty.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/terminal.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/cursor.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/style.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/prompt.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/window.hpp"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/cpp-terminal/version.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms/libcpp-terminal-platforms.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal/cpp-terminalTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal/cpp-terminalTargets.cmake"
         "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/CMakeFiles/Export/lib/cmake/cpp-terminal/cpp-terminalTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal/cpp-terminalTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal/cpp-terminalTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal" TYPE FILE FILES "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/CMakeFiles/Export/lib/cmake/cpp-terminal/cpp-terminalTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal" TYPE FILE FILES "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/CMakeFiles/Export/lib/cmake/cpp-terminal/cpp-terminalTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpp-terminal" TYPE FILE FILES
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cmake/cpp-terminalConfig.cmake"
    "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/cpp-terminalConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/cpp-terminal/platforms/cmake_install.cmake")

endif()

