# CMake generated Testfile for 
# Source directory: /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/tests
# Build directory: /home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/test_terminal_include-b858cb2.cmake")
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/file.test_include-b858cb2.cmake")
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/Key_include-b858cb2.cmake")
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/Screen_include-b858cb2.cmake")
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/Events_include-b858cb2.cmake")
include("/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/Args_include-b858cb2.cmake")
add_test(Args "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-build/tests/Args" "Bonjour" "Hello" "你好")
set_tests_properties(Args PROPERTIES  _BACKTRACE_TRIPLES "/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/tests/CMakeLists.txt;60;add_test;/home/matthewalgo/Projects/picr/build/build_executable/_deps/cpp-terminal-src/tests/CMakeLists.txt;0;")
subdirs("../../doctest-build")
