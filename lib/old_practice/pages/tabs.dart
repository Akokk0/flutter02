import 'package:flutter/material.dart';
import 'package:flutter02/pages/tabs/flutter.dart';
import '../iconFont.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import 'tabs/settings.dart';
import './tabs/bilibili.dart';

// 底部凸起按钮
class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
    BilibiliPage(),
    FlutterPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: AppBar(
          elevation: 0,
          title: const Text("Flutter TabBar"),
        ),
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/IMG_4970.JPG"),
                // backgroundImage: AssetImage("images/lunlun.png"),
              ),
              accountName: Text("Akokko"),
              accountEmail: Text("admin@akokko.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/lunlun.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("分类"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( // 底部导航栏
        currentIndex: _currentIndex, // 当前选中页面
        // fixedColor: Colors.blue, // 选中颜色
        iconSize: 30, // 底部菜单大小
        type: BottomNavigationBarType.fixed, // 配置四个或四个以上菜单项
        onTap: (index){
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
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(top: 17),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // 可以配置浮动按钮的位置
    );
  }
}
