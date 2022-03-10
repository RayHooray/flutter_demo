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
  bool isCodeLogin = false;

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
        Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Image.asset(
                  './images/avatar.png',
                  width: MediaQuery.of(context).size.width * .77,
                  height: MediaQuery.of(context).size.height * .3,
                ),
              ),
              // 可隐藏组件
              Offstage(
                  offstage: isCodeLogin,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                    ),
                  ))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        loading.setLoading(isLogin)
      ]),
    );
  }
}
