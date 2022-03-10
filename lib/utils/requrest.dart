import 'package:dio/dio.dart';
import 'package:flutter_demo1/components/Tips.dart';
import 'dart:convert';

class Http {
  static Dio dio = Dio();
  Tips tips = Tips();

  post(context, String url, dynamic requestData) async {
    try {} catch (e) {}
  }
}
