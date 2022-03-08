import 'package:flutter/material.dart';

// mixins 混合
class GlobalData with ChangeNotifier {
  List prevSelectList = [];
}

// userMsg Mixins
class UserMsg with ChangeNotifier {
  var context;
  bool isLogin = false;
  List gbsUser = [];
  String userName = "";
  String token = "";
  String userId = "";
  String eaiServiceName = "";
  String sysNameArr = "";
  String account = "";
  String oprateHis = "";
  String depotName = "";
  String depotCode = "";
  List locationList = [];
  bool refreshMain = false;

  void increment() {
    notifyListeners();
  }
}

class UrlConfig with ChangeNotifier {
  // 正式
  // String baseURL = "http://109.244.130.69/api";
  // String baseURL = "http://edepot.i.sinotrans.com/api";
  String baseIP = "http://edepot.i.sinotrans.com/";
  String baseURL = "http://edepot.i.sinotrans.com/api";

  // 测试
  // String baseIP = "http://120.53.206.238/";
  // String baseURL = "http://120.53.206.238/api";

  // String checkUpdateUrl = "http://172.16.100.42:8002/appstore/service/RemoteService"; // 版本升级测试地址
  String checkUpdateUrl =
      "http://meap.sinotrans.com/appstore/service/RemoteService"; // 版本升级正式地址

  // String base64URL = "http://10.233.19.121:85/file/upload";
  // String imgStoreURL = "http://10.233.19.121:85/imgstore/";
  // String downLoadUrl =
  // "http://meap.sinotrans.com/appstore/appstore/appdetails.html?id=78";

  // token
  String token =
      "eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2MDA2Njc2MCIsImlhdCI6MTU5NDAyNjMwMCwic3ViIjoie1wiYWNjb3VudE5vbkV4cGlyZWRcIjp0cnVlLFwiYWNjb3VudE5vbkxvY2tlZFwiOnRydWUsXCJjcmVkZW50aWFsc05vbkV4cGlyZWRcIjp0cnVlLFwiZW5hYmxlZFwiOnRydWUsXCJzdXBlclJvbGVcIjpmYWxzZSxcInVzZXJJZFwiOlwiNjAwNjY3NjBcIixcInVzZXJuYW1lXCI6XCJzMTAwMDA3N1wifSIsImV4cCI6MTU5NDExMjcwMH0.SscviZMjTN_wo0BA80LNK08Q0l-L1ldK4kAdYulYWno";
  void changeBaseUrl(url) {
    baseURL = url;
    notifyListeners();
  }
}
