#ifndef CHATSERVICE_H
#define CHATSERVICE_H
#include <muduo/net/TcpConnection.h>
#include <unordered_map>
#include <functional>
#include "json.hpp"
#include "usermodel.hpp"
#include <mutex>
#include "offlinemessagemodel.hpp"
#include "friendmodel.hpp"
#include "groupmodel.hpp"
using json = nlohmann::json;
using namespace std;
using namespace muduo;
using namespace muduo::net;
//表示处理消息的事件回调方法
using MsgHandler = std::function<void(const TcpConnectionPtr &coon,json &js,Timestamp)>;
//聊天服务器业务类
class ChatService
{
public:
    //获取单例对象的接口函数
    static ChatService* instance();
    //处理登陆业务
    void login(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //处理注册业务
    void reg(const TcpConnectionPtr &coon,json &js,Timestamp time); 
    //一对一聊天业务
    void oneChat(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //添加好友业务
    void addFriend(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //创建群组
    void createGroup(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //加入群组业务
    void addGroup(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //群聊业务
    void groupChat(const TcpConnectionPtr &coon,json &js,Timestamp time);
    //获取消息对应的处理器
    MsgHandler get_Handler(int msgid);
    //处理客户端异常退出
    void clientCloseException(const TcpConnectionPtr &conn);
    //服务器异常后，业务重置方法
    void reset();
private:
    ChatService();
    //存储消息id和其对应业务的处理方法
    unordered_map<int,MsgHandler> _msghandlerMap;
    //存储在线用户的用心链接
    unordered_map<int,TcpConnectionPtr> _userConnMap;
    //定义互斥锁 保证_userconnmap线程安全
    mutex _connMutex; 
    //数据操作类对象
    UserModel _userModel;
    offlineMsgModel _offlineMsgModel;
    FriendModel _friendModel;
    GroupModel _groupModel;
};

#endif