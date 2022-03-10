import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo1/components/Loading.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final TextEditingController _userInput = TextEditingController();
  final TextEditingController _pwdInput = TextEditingController();
  final TextEditingController _phoneInput = TextEditingController();
  final TextEditingController _codeInput = TextEditingController();

  Loading loading = Loading();

  bool isLoading = false;
  bool hideLocationBar = true;
  bool hidePassword = true;
  bool isCodeLogin = false;
  bool isTimer = false;
  int msgSconds = 30;
  late int _serviceVersionCode;
  List locationList = [];

  void showPassWord() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  void _sendMsg() {}

  _timerColor() {
    if (!isTimer) {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }

  _switchLoginType() {
    setState(() {
      isCodeLogin = true;
    });
  }

  _login() {
    print(_userInput.text);
    print(_pwdInput.text);
  }

  _locationBar() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
        leading: IconButton(
          icon: const Icon(Icons.recent_actors),
          onPressed: () {},
        ),
      ),
      body: Stack(children: <Widget>[
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                  child: Card(
                child: Image.asset('./images/avatar.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.29),
              )),
            ),
            Offstage(
              offstage: !isCodeLogin,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.account_circle,
                          size: 28,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            controller: _userInput,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              hintText: '请输入用户名',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                          size: 26,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            controller: _pwdInput,
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                                hintText: '请输入密码',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: hidePassword
                                        ? Colors.grey
                                        : Colors.blue,
                                  ),
                                  onPressed: showPassWord,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Offstage(
              offstage: isCodeLogin,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.phone_iphone,
                            size: 28, color: Colors.grey),
                        Expanded(
                          child: TextFormField(
                            controller: _phoneInput,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              hintText: '请输入手机号',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.code, size: 28, color: Colors.grey),
                        Expanded(
                          child: TextFormField(
                            controller: _codeInput,
                            obscureText: hidePassword,
                            decoration: const InputDecoration(
                              hintText: '请输入验证码',
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: _sendMsg,
                            // textColor: Colors.white,
                            // child: _timerColor(),
                            child: Row(children: [
                              Offstage(
                                offstage: isTimer,
                                child: const Text(
                                  '点击发送',
                                ),
                              ),
                              Offstage(
                                offstage: !isTimer,
                                child: Text(
                                  msgSconds.toString() + ' s',
                                ),
                              ),
                            ]))
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const Icon(
                              Icons.person_pin,
                              color: Color(0xff2296f3),
                              size: 16,
                            ),
                            GestureDetector(
                              child: const Text(
                                '账号密码登录',
                                style: TextStyle(color: Color(0Xff2296F3)),
                              ),
                              onTap: _switchLoginType,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 60),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                color: Colors.blue,
                elevation: 13.0,
                child: TextButton(
                  onPressed: () {
                    _login();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '登 录',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Offstage(offstage: hideLocationBar, child: _locationBar()),
        loading.setLoading(isLoading),
      ]),
    );
  }
}
