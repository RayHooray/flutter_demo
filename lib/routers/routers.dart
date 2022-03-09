import 'package:flutter/material.dart';
import 'package:flutter_demo1/views/Home/Login.dart';
import '../views/Home/Home.dart';

Map<String, WidgetBuilder> routers = {
  '/': (BuildContext context) => const Home(),
  '/login': (BuildContext context) => const Login()
};

typedef NestedRouteBuilder = Widget Function(Widget? child);

class NestedRoute {
  final Map<String, NestedRoute>? subRoutes;
  final NestedRouteBuilder builder;

  const NestedRoute({this.subRoutes, required this.builder});

  Route buildRoute(List<String> paths, int index) {
    return MaterialPageRoute(
      builder: (_) => _build(paths, index),
    );
  }

  Widget _build(List<String> paths, int index) {
    if (index >= paths.length) {
      final child = subRoutes != null ? subRoutes!['/'] : null;
      return builder(child!.builder(null));
    }
    return builder(subRoutes![paths[index]]!._build(paths, index + 1));
  }
}

// RouteFactory buildNestedRoutes(Map<String, >)