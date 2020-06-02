# CMakeList.txt: 顶层 CMake 项目文件，在此处执行全局配置
# 并包含子项目。
#
cmake_minimum_required (VERSION 3.8)
set(CMAKE_CXX_STANDARD 17)
set(cxeser_VERSION_MAJOR 1)
set(cxeser_VERSION_MINOR 0)
set(cxeser_VERSION_PATCH 5)
include(config.cmake)
include(test.cmake)
project ("cxeser")
# 包含子项目。
add_subdirectory ("src")

include(InstallRequiredSystemLibraries)
set (CPACK_RESOURCE_FILE_LICENSE
  "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set (CPACK_PACKAGE_VERSION_MAJOR "${cxeser_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${cxeser_VERSION_MINOR}")
set (CPACK_PACKAGE_VERSION_PATCH "${cxeser_VERSION_PATCH}")
include(CPack)

