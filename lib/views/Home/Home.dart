// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int bottomIndex = 0;
  String text = "";
  dynamic showPage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(text),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: (bottomIndex == 0 ? Colors.blue : Colors.grey),
            ),
            label: '首页',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color: (bottomIndex == 1 ? Colors.blue : Colors.grey),
              ),
              label: '堆场'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color: (bottomIndex == 2 ? Colors.blue : Colors.grey),
              ),
              label: '配置'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomIndex,
        onTap: (int index) {
          setState(() {
            bottomIndex = index;
            switch (index) {
              case 0:
                text = '首页';
                break;
              case 1:
                text = '堆场';
                break;
              case 2:
                text = '设置';
                break;
            }
          });
        },
      ),
    );
  }
}
