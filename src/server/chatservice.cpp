#include "chatservice.hpp"
#include "public.hpp"
#include <muduo/base/Logging.h>
#include <string>
#include <vector>

using namespace std;
using namespace muduo;

//服务器异常后，业务重置方法
void ChatService::reset()
{
    //把online状态掉用户，设置成offline；
    _userModel.resetState();

}
    //获取单例对象的接口函数
ChatService* ChatService::instance()
{
    static ChatService service;
    return &service;
}
//注册消息以及对应的handler回掉操作
ChatService::ChatService()
{
    _msghandlerMap.insert({LOGIN_MSG,std::bind(&ChatService::login,this,_1,_2,_3)});
    _msghandlerMap.insert({REG_MSG,std::bind(&ChatService::reg,this,_1,_2,_3)});
    _msghandlerMap.insert({ONE_CHAT_MSG,std::bind(&ChatService::oneChat,this,_1,_2,_3)});
    _msghandlerMap.insert({ADD_FRIEND_MSG,std::bind(&ChatService::addFriend,this,_1,_2,_3)});
    _msghandlerMap.insert({CREATE_GROUP_MSG,std::bind(&ChatService::createGroup,this,_1,_2,_3)});
    _msghandlerMap.insert({ADD_GROUP_MSG,std::bind(&ChatService::addGroup,this,_1,_2,_3)});
    _msghandlerMap.insert({GROUP_CHAT_MSG,std::bind(&ChatService::groupChat,this,_1,_2,_3)});
}
//获取消息对应的处理器
MsgHandler ChatService::get_Handler(int msgid)
{
    //记录错误日志，msgid 没有对应的事件处理回调
    auto it = _msghandlerMap.find(msgid);
    if(it == _msghandlerMap.end())
    {
        //返回一个默认的处理器 空操作
        return [=](const TcpConnectionPtr &coon,json &js,Timestamp time)
        {
            LOG_ERROR << "msgid:" << msgid << "can not find handler!";
        };
    }
    else
    {
        return _msghandlerMap[msgid];
    }
}
    //处理登陆业务 ORM 业务层操作的都是对象 
void ChatService::login(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int id = js["id"];
    string pwd = js["password"];

    User user = _userModel.query(id);
    if(user.getId() == id && user.getPwd() == pwd)
    {
        if(user.getState() == "online")
        {
            //该用户已经登陆不允许重新登陆
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 1;
            response["errmsg"] = "该账号已经登陆，请重新输入新账号!";
            coon->send(response.dump());
        }else{
            //登陆成功，记录用户连接信息
            {
                lock_guard<mutex> lock(_connMutex);
                _userConnMap.insert({id,coon});
            }

            //登陆成功,更新用户状态信息 state offline-》online
            user.setState("online");
            _userModel.updateState(user);
            
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 0;
            response["id"] = user.getId();
            response["name"] = user.getName();
            //查询该用户是否有离线消息
            vector<string> vec = _offlineMsgModel.query(id);
            if(!vec.empty())
            {
                response["offlinemsg"] = vec;
                //读取该用户的离线消息后，把该用户的所有离线消息删除掉
                _offlineMsgModel.remove(id);
            }
            //查询该用户的好友信息并返回
            vector<User> userVec = _friendModel.query(id);
            if(!userVec.empty())
            {
                vector<string> vec2;
                for(User &user : userVec)
                {
                    json js;
                    js["id"] = user.getId();
                    js["name"] = user.getName();
                    js["state"] = user.getState();
                    vec2.push_back(js.dump());
                }
                response["friends"] = vec2;
            }
            coon->send(response.dump()); 
        }


    }else
    {
        //用户不存在登陆失败
        json response;
        response["msgid"] = LOGIN_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "用户名或者密码错误，请重新输入!";
        coon->send(response.dump());
    }
}
//处理注册业务 name password
void ChatService::reg(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    
    string name = js["name"];
    string pwd = js["password"];

    User user;
    user.setName(name);
    user.setPwd(pwd);
    bool state = _userModel.insert(user);
    if(state)
    {
        //注册成功
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();
        coon->send(response.dump());
    }
    else{
        //注册失败
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 1;
        coon->send(response.dump());
    }

}
//客户端异常退出
void ChatService::clientCloseException(const TcpConnectionPtr &conn)
{
    User user;
    lock_guard<mutex> lock(_connMutex);
    {
        for(auto it = _userConnMap.begin(); it != _userConnMap.end();++it)
        {
            if(it->second == conn)
            {
                //从连接表中去除连接
                user.setId(it->first);
                _userConnMap.erase(it);
                break;
            }
        }
    }
    
    //更新用户状态的信息
    if(user.getId() != -1)
    {
        user.setState("offline");
        _userModel.updateState(user);
    }
}
//一对一聊天业务
void ChatService::oneChat(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int toid = js["to"].get<int>();
    //标示用户是否在线
        {
            lock_guard<mutex> lock(_connMutex);
            auto it = _userConnMap.find(toid);
            if(it != _userConnMap.end())
            {
                //toid在线，转发消息； 服务器主动推送消息给toid用户
                it->second->send(js.dump());
                return;
            }
        }
        
    //toid不在线 存储离线消息
    _offlineMsgModel.insert(toid,js.dump());
}


//添加好友业务 id friend id
void ChatService::addFriend(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int userid = js["id"].get<int>();
    int friendid = js["friendid"].get<int>();
    
    //  存储好友信息
    _friendModel.insert(userid,friendid);

}

//创建群组
void ChatService::createGroup(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int userid = js["id"].get<int>();
    string name = js["groupname"];
    string desc = js["groupdesc"];

    //存储新创建的群组信息
    Group group(-1,name,desc);
    if(_groupModel.createGroup(group))
    {
        //存储群组创建人信息
        _groupModel.addGroup(userid,group.getId(),"creator");
    }
}
    //加入群组业务
void ChatService::addGroup(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();
    _groupModel.addGroup(userid,groupid,"normal");
}

 //群聊业务
void ChatService::groupChat(const TcpConnectionPtr &coon,json &js,Timestamp time)
{
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();
    vector<int> useridVec = _groupModel.queryGroupUsers(userid,groupid);
    for(int id : useridVec)
    {
        lock_guard<mutex> lock(_connMutex);
        auto it = _userConnMap.find(id);
        if(it != _userConnMap.end())
        {
            //转发群消息
            it->second->send(js.dump());
        }
        else{
            //存储离线群消息
            _offlineMsgModel.insert(id,js.dump());
        }
    }
}