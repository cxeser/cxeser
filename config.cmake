string(TIMESTAMP buildTime "%Y%m%d-%H%M%S")

set(configFileName "${CMAKE_CURRENT_SOURCE_DIR}/src/config.h")



file(WRITE ${configFileName} "\n#pragma once\n" )
file(APPEND ${configFileName} "static const char* cxeserVersion=\"${cxeser_VERSION_MAJOR}.${cxeser_VERSION_MINOR}.${cxeser_VERSION_PATCH}\";")
file(APPEND ${configFileName} "\nstatic const char* cxeserBuildTime=\"${buildTime}\";")

