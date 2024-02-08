#include "json.hpp"
using nlohmann::json;

#include <iostream>
#include <vector>
#include <string>
#include <map>
using namespace std;

void fun1()
{
    json js;
    js["msg_type"] = 2;
    js["from"] = "zhangsan";
    js["to"] = "li si";
    js["msg"] = "hello,what are you doing now?";
    //json 转成 string
    string sendBuf = js.dump();
    cout<< sendBuf.c_str() << endl;
}
string fun2()
{
    json js;
    js["msg_type"] = 2;
    js["from"] = "zhangsan";
    js["to"] = "li si";
    js["msg"] = "hello,what are you doing now?";
    //json 转成 string
    string sendBuf = js.dump();
    return sendBuf;
}

int main()
{

    string recvBuf = fun2();
    //数据反序列化 json字符串 =》 反序列化 数据对象
    json  jsbuf = json::parse(recvBuf);
    cout<< jsbuf["msg_type"] << endl;
    cout<< jsbuf["from"] << endl;
    cout<< jsbuf["to"] << endl;
    cout<< jsbuf["msg"] << endl;
    return 0;
}