import 'package:flutter/material.dart';

class Banding extends StatefulWidget {
  const Banding({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Banding();
  }
}

class _Banding extends State<Banding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('堆场绑定')),
      body: ConstrainedBox(constraints: BoxConstraints.expand()),
    );
  }
}
