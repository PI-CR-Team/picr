#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ftxui::screen" for configuration "Release"
set_property(TARGET ftxui::screen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ftxui::screen PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libftxui-screen.so.5.0.0"
  IMPORTED_SONAME_RELEASE "libftxui-screen.so.5.0.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::screen )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::screen "${_IMPORT_PREFIX}/lib/libftxui-screen.so.5.0.0" )

# Import target "ftxui::dom" for configuration "Release"
set_property(TARGET ftxui::dom APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ftxui::dom PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libftxui-dom.so.5.0.0"
  IMPORTED_SONAME_RELEASE "libftxui-dom.so.5.0.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::dom )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::dom "${_IMPORT_PREFIX}/lib/libftxui-dom.so.5.0.0" )

# Import target "ftxui::component" for configuration "Release"
set_property(TARGET ftxui::component APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ftxui::component PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libftxui-component.so.5.0.0"
  IMPORTED_SONAME_RELEASE "libftxui-component.so.5.0.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::component )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::component "${_IMPORT_PREFIX}/lib/libftxui-component.so.5.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
