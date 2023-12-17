cmake_minimum_required(VERSION 3.14...3.22)
set (CMAKE_CXX_STANDARD 20)
set(INTERNAL_MODULES_PATH "modules")
project(PiCrExecutable LANGUAGES CXX)


# Set the C++ standard to C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Use the C++17 standard for all targets
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")

set(UNIX_LIBRARIES "")

if (UNIX)
	find_package(X11 REQUIRED)
	set(UNIX_LIBRARIES "X11")
endif()

# --- Import tools ----

include(../cmake/tools.cmake)

# ---- Dependencies ----

include(../cmake/CPM.cmake)

# ---- Add other dependencies ----

# cpp-terminal
CPMAddPackage (
  NAME cpp-terminal
  GITHUB_REPOSITORY jupyter-xeus/cpp-terminal
  GIT_TAG 80d1dd8
)

# FTXUI
CPMAddPackage (
  NAME ftxui
  GITHUB_REPOSITORY ArthurSonzogni/FTXUI
  GIT_TAG v5.0.0
)

# Imtui
CPMAddPackage (
    NAME imtui
    GITHUB_REPOSITORY ggerganov/imtui
    GIT_TAG v1.78
)

# SFML
# Warning - Depends on udev - sudo apt-get install libudev-dev
CPMAddPackage (
    NAME SFML
    GITHUB_REPOSITORY SFML/SFML
    GIT_TAG 2.5.x
)

# Warning! Depends on build-essential - sudo apt-get install build-essential
# Vorbis - sudo apt-get install -y vorbis-tools libvorbis-dev libogg-dev
# FLAC - sudo apt-get install libflac-dev

#### ALL DEPS

# # # Install CMake GUI
# sudo apt-get install cmake-gui

# # SFML Dependencies
# sudo apt-get install libpthread-stubs0-dev
# sudo apt-get install libgl1-mesa-dev
# sudo apt-get install libx11-dev
# sudo apt-get install libxrandr-dev
# sudo apt-get install libfreetype6-dev
# sudo apt-get install libglew1.5-dev
# sudo apt-get install libjpeg8-dev
# sudo apt-get install libsndfile1-dev
# sudo apt-get install libopenal-dev
# sudo apt-get install cmake-gui libxcursor-dev libpthread-stubs0-dev libgl1-mesa-dev libx11-dev libxrandr-dev libfreetype6-dev libglew-dev libjpeg8-dev libsndfile1-dev libopenal-dev libudev-dev libxcb-image0-dev
# # Joystick
# sudo apt-get install libudev-dev
set_target_properties(sfml-system PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-network PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-graphics PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-window PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO)
set_target_properties(sfml-audio PROPERTIES CXX_STANDARD 98 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS NO) # Warning! Depends on openal - sudo apt-get install libopenal-dev
find_package(SFML REQUIRED COMPONENTS graphics window system audio network)

# Find the ncurses library
find_package(Curses REQUIRED)

file(GLOB sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/source/*.cpp)

add_executable(${PROJECT_NAME} ${sources})

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "PiCr")

target_link_libraries(
    ${PROJECT_NAME} 
    # cpp-terminal 
    # ${CURSES_LIBRARIES} 
    ftxui::screen
    ftxui::dom
    ftxui::component
    sfml-system sfml-window sfml-graphics sfml-audio sfml-network
    # ${UNIX_LIBRARIES}
)

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
