#include "chatserver.hpp"
#include <functional>
#include <iostream>
#include "json.hpp"
#include "chatservice.hpp"
using namespace std;
using namespace placeholders;
using json = nlohmann::json;
//初始化服务器
ChatServer::ChatServer(EventLoop* loop,
            const InetAddress& listenAddr,
            const string& nameArg)
            :_server(loop,listenAddr,nameArg)
            ,_loop(loop)
{
    //注册链接回调函数
    _server.setConnectionCallback(std::bind(&ChatServer::onConnection,this,_1));
    //注册读写回调函数
    _server.setMessageCallback(std::bind(&ChatServer::onMessage,this,_1,_2,_3));
    //设置线程数量
    _server.setThreadNum(4);
}
//启动服务器
void ChatServer::start()
{
    _server.start();
}

    //上报链接相关信息的回调函数
void ChatServer::onConnection(const TcpConnectionPtr& conn)
{
    //客户端断开链接
    if(!conn->connected())
    {
        ChatService::instance()->clientCloseException(conn);
        conn->shutdown();
    }
}
    //上报读写时间相关信息的回调函数
void ChatServer::onMessage(const TcpConnectionPtr& conn,
                            Buffer* buffer,
                            Timestamp time)
{
//retrieveALLAsString 可以把缓冲区的数据都放进字符串当中
    string buf = buffer->retrieveAllAsString();
    //数据的反序列化
    json js = json::parse(buf);
    //达到的目的： 完全解偶网络模块的代码和业务模块的代码
    //通过js[“msgid”] 获取-》业务handler-〉conn js time
    auto msgHandler = ChatService::instance()->get_Handler(js["msgid"].get<int>());
    //回调消息绑定好的事件处理器，来自火星相应的业务处理
    msgHandler(conn,js,time);
}