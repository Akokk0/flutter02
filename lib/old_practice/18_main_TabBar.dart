import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false, // 隐藏Debug图标
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin { // 实现顶部导航栏混入
  late TabController _tabController;

  // 生命周期函数，当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Menu");
          },
        ),
        backgroundColor: Colors.pinkAccent, // 导航背景颜色
        actions: [ // 右侧的按钮图标
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("Search");
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              print("More");
            },
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          indicatorPadding: const EdgeInsets.all(5),
          labelColor: Colors.pinkAccent,
          unselectedLabelColor: Colors.white,
          /*labelStyle: const TextStyle(
            fontSize: 16
          ),*/
          /*unselectedLabelStyle: const TextStyle(
            fontSize: 12
          ),*/
          // indicatorSize: TabBarIndicatorSize.label, // 选中区域
          indicator: BoxDecoration( // 配置背景颜色
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

          ),
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("热门"),
            ),
        ],),
        title: const Text("AppBar"),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const Text("测试列表"),
          const Text("测试列表"),
          const Text("测试列表"),
          const Text("测试列表"),
          const Text("测试列表"),
          const Text("测试列表"),
          ListView(children: const [
            ListTile(
              title: Text("我是关注列表"),
            )
          ],),
          ListView(children: const [
            ListTile(
              title: Text("我是热门列表"),
            ),
          ],),
          ListView(children: const [
              ListTile(
                title: Text("我是视频列表"),
              )
            ],
          )
        ],
      ),
    );
  }
}

