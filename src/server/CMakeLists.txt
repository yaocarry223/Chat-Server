#定义了一个SRC_LIST变量，包含了该目录下的所有源文件
aux_source_directory(. SRC_LIST)
aux_source_directory(./db DB_LIST)
aux_source_directory(./model MODEL_LIST)

add_executable(Chatserver ${SRC_LIST} ${DB_LIST} ${MODEL_LIST})
#指定可执行文件需要依赖的库文件
target_link_libraries(Chatserver muduo_net muduo_base mysqlclient pthread)