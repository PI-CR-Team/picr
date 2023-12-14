cmake_minimum_required(VERSION 3.14...3.22)
set (CMAKE_CXX_STANDARD 17)
set(INTERNAL_MODULES_PATH "modules")
project(PiCrExecutable LANGUAGES CXX)

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

# Graphics and OpenGl
CPMAddPackage (
  NAME cpp-terminal
  GITHUB_REPOSITORY jupyter-xeus/cpp-terminal
  GIT_TAG 80d1dd8
)
# Find the ncurses library
find_package(Curses REQUIRED)

# Adds the custom library to CPM
CPMAddPackage(NAME PiCrLibraries SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../lib_sources)
CPMAddPackage(NAME unicode SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../executable_sources/modules/unicode)
CPMAddPackage(NAME cpp-terminal-gui SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../executable_sources/modules/cpp-terminal-gui)

file(GLOB sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/source/*.cpp)

add_executable(${PROJECT_NAME} ${sources})

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "PiCr")

target_link_libraries(${PROJECT_NAME} PiCrLibraries ${CURSES_LIBRARIES} cpp-terminal ${UNIX_LIBRARIES})

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)