import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  get showPage => null;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {});
  }

  BottomNavigationBar _bottomNavigationBar =
      BottomNavigationBar(items: <BottomNavigationBarItem>[]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: showPage),
      bottomNavigationBar: _bottomNavigationBar,
    );
  }
}
