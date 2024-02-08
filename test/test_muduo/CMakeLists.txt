cmake_minimum_required(VERSION 3.0)
project(main)
#配置头文件搜索路径
# include_directories()
#配置库文件搜索路径
#link_directories()
#设置需要编译的源文件列表
set(SRC_LIST test_muduo.cpp)
#把.制定路径下的所有源文件名字放入变量名SRC_LIST里面
# aux_source_directory(. SRC_LIST)
#设置可执行文件最终存储路径 project_binary_dir 是工程的根目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(server ${SRC_LIST})
#表示server这个目标程序，需要连接muduo_net muduo_base pthread这三个库
target_link_libraries(server muduo_net muduo_base pthread)