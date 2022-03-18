import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo1/components/Loading.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  get showPage => null;
  Loading loading = Loading();
  bool isLoading = false;
  List modelList = [
    {"resourceName": "食品箱拍照"},
    {"resourceName": "确认箱况"},
    {"resourceName": "验箱"},
    {"resourceName": "状态更改"},
    {"resourceName": "单柜查询"},
    {"resourceName": "维修派工"},
    {"resourceName": "PTI完成"},
    {"resourceName": "权限管理"},
    {"resourceName": "污箱拍照"},
    {"resourceName": "出场拍照"},
    {"resourceName": "起租拍照"},
    {"resourceName": "监管操作"},
    {"resourceName": "监管查询"},
    {"resourceName": "监管箱查询"},
    {"resourceName": "增加估价"},
    {"resourceName": "冷箱验箱"},
    {"resourceName": "租箱验箱"},
    {"resourceName": "冷箱单柜查询"},
    {"resourceName": "冷箱状态更改"},
    {"resourceName": "冷箱维修派工"},
    {"resourceName": "冷箱增加估价"},
    {"resourceName": "冷箱机组维修"},
    {"resourceName": "保修拍照"},
  ];

  _modelSelect(modelSelected) {
    // String _pageUrl =
    //     "/${modelSelected['url'].split('_').join().toLowerCase()}";
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        // 盒子大小，该选项为铺满整个屏幕
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  pinned: true,
                  floating: true,
                  leading: const Text(''),
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    // title: const Text('首页'),
                    background: Image.asset(
                      "./assets/images/homeTop.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(6.0),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 1.9,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        Color itemColorBg;
                        String itemImageUrl;
                        switch (modelList[index]["resourceName"]) {
                          case "食品箱拍照":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/takePhoto.png';
                            break;
                          case "确认箱况":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/confirmIn.png';
                            break;
                          case "验箱":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/checkCnt.png';
                            break;
                          case "状态更改":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/stateChange.png';
                            break;
                          case "单柜查询":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/cntSearch.png';
                            break;
                          case "维修派工":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/repair.png';
                            break;
                          case "PTI完成":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/PTIok.png';
                            break;
                          case "权限管理":
                            itemColorBg = Colors.red;
                            itemImageUrl = './assets/images/limit.png';
                            break;
                          case "污箱拍照":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/takePhoto.png';
                            break;
                          case "出场拍照":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/takePhoto.png';
                            break;
                          case "起租拍照":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/takePhoto.png';
                            break;
                          case "监管操作":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/opration.png';
                            break;
                          case "监管查询":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/query.png';
                            break;
                          case "监管箱查询":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/cntQuery.png';
                            break;
                          case "增加估价":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/addPrice.png';
                            break;
                          case "冷箱验箱":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/checkCnt.png';
                            break;
                          case "租箱验箱":
                            itemColorBg = Colors.blue;
                            itemImageUrl = './assets/images/checkCnt.png';
                            break;
                          case "冷箱单柜查询":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/cntSearch.png';
                            break;
                          case "冷箱状态更改":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/stateChange.png';
                            break;
                          case "冷箱维修派工":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/repair.png';
                            break;
                          case "冷箱增加估价":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/addPrice.png';
                            break;
                          case "冷箱机组维修":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/checkCnt.png';
                            break;
                          case "保修拍照":
                            itemColorBg = Colors.orange;
                            itemImageUrl = './assets/images/takePhoto.png';
                            break;
                          default:
                            itemColorBg = Colors.grey;
                            itemImageUrl = './assets/images/cntQuery.png';
                            break;
                        }
                        return InkWell(
                          onTap: () {
                            _modelSelect(modelList[index]);
                          },
                          child: Card(
                            elevation: 8,
                            color: itemColorBg,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      './assets/images/itemBg.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .45,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 6,
                                                    child: Row(
                                                      children: <Widget>[
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          '${modelList[index]["resourceName"].substring(0, 1)}',
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 0, 10, 0),
                                                          child: Text(
                                                              '${modelList[index]["resourceName"].substring(1)}',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16,
                                                              )),
                                                        )
                                                      ],
                                                    )),
                                                Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Image.asset(
                                                          itemImageUrl,
                                                          width: 30,
                                                          height: 25,
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        )
                                                      ],
                                                    )),
                                              ],
                                            ),
                                            Row(
                                              children: const <Widget>[
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                // Text(
                                                //   '${modelList[index]["url"].substring(0, 1).toUpperCase()}',
                                                //   style: const TextStyle(
                                                //       color: Colors.white,
                                                //       fontSize: 16,
                                                //       fontWeight:
                                                //           FontWeight.w600),
                                                // ),
                                                // Text(
                                                //     '${modelList[index]["url"].substring(1)}',
                                                //     style: const TextStyle(
                                                //       decoration:
                                                //           TextDecoration.none,
                                                //       color: Colors.white,
                                                //       fontSize: 11,
                                                //       // fontWeight: FontWeight.w900
                                                //     ))
                                              ],
                                            )
                                          ]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ),
              ],
            ),
            loading.setLoading(isLoading)
          ],
        ));
  }
}
