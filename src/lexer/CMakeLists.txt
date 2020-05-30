# CMakeList.txt: lexer 的 CMake 项目，在此处包括源代码并定义
# 项目特定的逻辑。
cmake_minimum_required (VERSION 3.8)
# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_LIB_SRCS 变量
aux_source_directory(. DIR_LEXER_SRCS)

# 生成链接库
add_library (lexer ${DIR_LEXER_SRCS})
