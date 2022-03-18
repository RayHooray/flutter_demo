import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UserInfo();
  }
}

class _UserInfo extends State<UserInfo> {
  void _exitLogin() {
    print('login out');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: ExactAssetImage('assets/images/itemBg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 20, 20),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage('./assets/images/timg.jpg'),
                        radius: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          '用戶名',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '仓库名称',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.library_books,
            color: Colors.blue,
          ),
          title: const Text(
            '当前版本',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          subtitle: Row(
            children: const <Widget>[Text('版本号123333')],
          ),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.red,
          child: ListTile(
            onTap: _exitLogin,
            title: const Text(
              '退出登录',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
