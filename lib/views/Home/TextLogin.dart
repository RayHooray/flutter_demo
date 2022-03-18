import 'package:flutter/material.dart';
import 'package:flutter_demo1/components/Loading.dart';

class TextLogin extends StatefulWidget {
  const TextLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextLogin();
  }
}

class _TextLogin extends State<TextLogin> {
  Loading loading = Loading();
  bool isLogin = false;
  bool isCodeLogin = true;
  late final int msgTimeout;
  // 手机号
  final TextEditingController _phoneNumber = TextEditingController();
  // 验证码
  final TextEditingController _codeInput = TextEditingController();
  // 用户名
  final TextEditingController _username = TextEditingController();
  // 密码
  final TextEditingController _password = TextEditingController();
  // 是否显示密码控制变量
  bool isShowPassword = true;
  // 是否显示密码
  void _showPassword() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  // 登录模式
  String get loginModel {
    return isCodeLogin ? '账号密码登录' : '手机验证码登录';
  }

  // 登录模式
  void _shiftLoginModel() {
    setState(() {
      isCodeLogin = !isCodeLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bar 头部
      appBar: AppBar(
        title: const Text('用户登录'),
        leading: IconButton(
          icon: const Icon(Icons.recent_actors),
          onPressed: () {},
        ),
        // 底部阴影
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: Image.asset(
                './assets/images/avatar.png',
                width: MediaQuery.of(context).size.width * .77,
                height: MediaQuery.of(context).size.height * .3,
              ),
            ),
            // 可以藏组件 —— 收集验证信息登录
            Offstage(
                offstage: !isCodeLogin,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.phone_iphone, color: Colors.grey),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextFormField(
                              controller: _phoneNumber,
                              autocorrect: false,
                              decoration:
                                  const InputDecoration(hintText: '请输入手机号'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.code, color: Colors.grey),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _codeInput,
                              decoration:
                                  const InputDecoration(hintText: '请输入验证码'),
                            ),
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text('发送验证码'))
                        ],
                      )
                    ],
                  ),
                )),
            // 可隐藏组件 —— 账号密码登录
            Offstage(
                offstage: isCodeLogin,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.account_circle, color: Colors.grey),
                          const SizedBox(width: 8),
                          Expanded(
                              child: TextFormField(
                            controller: _username,
                            autocorrect: false,
                            decoration:
                                const InputDecoration(hintText: '请输入用户名'),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.vpn_key,
                              color: Colors.grey, size: 26),
                          const SizedBox(width: 8),
                          Expanded(
                              child: TextFormField(
                            controller: _password,
                            // 是否显示密码
                            obscureText: isShowPassword,
                            decoration: InputDecoration(
                                hintText: '请输入密码',
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.remove_red_eye),
                                  onPressed: _showPassword,
                                  color: isShowPassword
                                      ? Colors.grey
                                      : Colors.blue,
                                )),
                          ))
                        ],
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(loginModel),
                    onPressed: _shiftLoginModel,
                  )
                ],
              ),
            ),
            // 登录按钮
            Container(
                padding: const EdgeInsets.fromLTRB(50, 70, 50, 0),
                width: MediaQuery.of(context).size.width * .77,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Color.fromARGB(255, 91, 188, 236)
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '登录',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ))
          ],
        ),
        loading.setLoading(isLogin)
      ]),
    );
  }
}
