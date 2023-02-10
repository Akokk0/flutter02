import 'package:flutter/material.dart';
import 'package:flutter02/pages/applePage.dart';
import 'package:flutter02/pages/bilibiliPage.dart';
import 'package:flutter02/pages/flutterPage.dart';
import 'package:flutter02/pages/steamPage.dart';
import 'package:flutter02/pages/tiktokPage.dart';
import 'package:flutter02/res/iconFont.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pageList = const [
    ApplePage(),
    TikTokPage(),
    SteamPage(),
    BilibiliPage(),
    FlutterPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: AppBar(
          elevation: 0,
          title: const Text("Flutter Router"),
        ),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar( // 底部导航栏
        currentIndex: _currentIndex,
        // 当前选中页面
        // fixedColor: Colors.blue, // 选中颜色
        iconSize: 30,
        // 底部菜单大小
        type: BottomNavigationBarType.fixed,
        // 配置四个或四个以上菜单项
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.apple),
              label: "Apple"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.tiktok),
              label: "TikTok"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.steam),
              label: "Steam"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.bilibili_fill),
              label: "Bilibili"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.flutter),
              label: "Flutter"
          ),
        ],
      ),
    );
  }
}
