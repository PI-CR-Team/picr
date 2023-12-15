#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cpp-terminal::cpp-terminal" for configuration "Release"
set_property(TARGET cpp-terminal::cpp-terminal APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cpp-terminal::cpp-terminal PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcpp-terminal.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS cpp-terminal::cpp-terminal )
list(APPEND _IMPORT_CHECK_FILES_FOR_cpp-terminal::cpp-terminal "${_IMPORT_PREFIX}/lib/libcpp-terminal.a" )

# Import target "cpp-terminal::cpp-terminal-platforms" for configuration "Release"
set_property(TARGET cpp-terminal::cpp-terminal-platforms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cpp-terminal::cpp-terminal-platforms PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcpp-terminal-platforms.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS cpp-terminal::cpp-terminal-platforms )
list(APPEND _IMPORT_CHECK_FILES_FOR_cpp-terminal::cpp-terminal-platforms "${_IMPORT_PREFIX}/lib/libcpp-terminal-platforms.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
