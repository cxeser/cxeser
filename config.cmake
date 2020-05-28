string(TIMESTAMP buildTime "%Y%m%d-%H%M%S")

set(configFileName "${CMAKE_CURRENT_SOURCE_DIR}/src/config.h")



file(WRITE ${configFileName} "\r\n#pragma once\r\n" )
file(APPEND ${configFileName} "static const char* cxjserVersion=\"${cxjser_VERSION_MAJOR}.${cxjser_VERSION_MINOR}.${cxjser_VERSION_PATCH}\";")
file(APPEND ${configFileName} "\r\nstatic const char* cxjserBuildTime=\"${buildTime}\";")