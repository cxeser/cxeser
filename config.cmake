string(TIMESTAMP buildTime "%Y%m%d-%H%M%S")

set(configFileName "${CMAKE_CURRENT_SOURCE_DIR}/src/config.h")



file(WRITE ${configFileName} "\r\n#pragma once\r\n" )
file(APPEND ${configFileName} "static const char* cxeserVersion=\"${cxeser_VERSION_MAJOR}.${cxeser_VERSION_MINOR}.${cxeser_VERSION_PATCH}\";")
file(APPEND ${configFileName} "\r\nstatic const char* cxeserBuildTime=\"${buildTime}\";")

if(UNIX OR APPLE)
    message("unix")
    add_compile_options("-lpthread")  
endif(UNIX OR APPLE)
