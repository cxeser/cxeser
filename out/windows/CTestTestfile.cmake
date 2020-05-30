# CMake generated Testfile for 
# Source directory: E:/code/c,cpp/cxjser
# Build directory: E:/code/c,cpp/cxjser/out/windows
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(output_usage "E:/code/c,cpp/cxjser/out/windows/src/Debug/cxjser.exe")
  set_tests_properties(output_usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage" _BACKTRACE_TRIPLES "E:/code/c,cpp/cxjser/CMakeLists.txt;22;add_test;E:/code/c,cpp/cxjser/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(output_usage "E:/code/c,cpp/cxjser/out/windows/src/Release/cxjser.exe")
  set_tests_properties(output_usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage" _BACKTRACE_TRIPLES "E:/code/c,cpp/cxjser/CMakeLists.txt;22;add_test;E:/code/c,cpp/cxjser/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(output_usage "E:/code/c,cpp/cxjser/out/windows/src/MinSizeRel/cxjser.exe")
  set_tests_properties(output_usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage" _BACKTRACE_TRIPLES "E:/code/c,cpp/cxjser/CMakeLists.txt;22;add_test;E:/code/c,cpp/cxjser/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(output_usage "E:/code/c,cpp/cxjser/out/windows/src/RelWithDebInfo/cxjser.exe")
  set_tests_properties(output_usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage" _BACKTRACE_TRIPLES "E:/code/c,cpp/cxjser/CMakeLists.txt;22;add_test;E:/code/c,cpp/cxjser/CMakeLists.txt;0;")
else()
  add_test(output_usage NOT_AVAILABLE)
endif()
subdirs("src")
