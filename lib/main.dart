import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [],
    child: CntYard(),)
  );
}

class CntYard extends StatelessWidget {
  CntYard({Key? key}) : super(key: key) {
    final router = Router(routerDelegate: routerDelegate)
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}