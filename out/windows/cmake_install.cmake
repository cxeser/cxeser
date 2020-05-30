# Install script for directory: E:/code/c,cpp/cxjser

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/cxjser")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/msvcp140.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/msvcp140_1.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/msvcp140_2.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/msvcp140_codecvt_ids.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/vcruntime140_1.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/vcruntime140.dll"
    "E:/Program Files (x86)/Microsoft Visual Studio/2019/Preview/VC/Redist/MSVC/14.27.28823/x64/Microsoft.VC142.CRT/concrt140.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/code/c,cpp/cxjser/out/windows/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/code/c,cpp/cxjser/out/windows/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
