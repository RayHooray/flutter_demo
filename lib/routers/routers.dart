import 'package:flutter/cupertino.dart';
import 'package:flutter_demo1/views/Home.dart';

Map<String, WidgetBuilder> routers = {
  '/': (BuildContext context) => const Home(
        title: 'Home',
      )
};
