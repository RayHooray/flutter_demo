import 'package:flutter/material.dart';
import 'package:flutter_demo1/routers/routers.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(
    CntYard(),
  );
}

class CntYard extends StatelessWidget {
  CntYard({Key? key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '智慧场站',
      locale: const Locale('zh'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      routes: routers,
      initialRoute: '/',
      // onGenerateInitialRoutes: ,
      // onGenerateRoute: ,
      // supportedLocales: const [
      //   Locale('zh', 'CN'),
      //   Locale('en', 'US'),
      // ],
    );
  }
}
