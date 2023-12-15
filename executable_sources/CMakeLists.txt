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
    # ${UNIX_LIBRARIES}
)

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
