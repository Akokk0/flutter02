import 'package:flutter/material.dart';
import 'package:flutter02/pages/form.dart';
import 'package:flutter02/pages/news.dart';
import 'package:flutter02/pages/search.dart';
import 'package:flutter02/tools/keepAliveWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
   late TabController _tabController;

   // 初始化生命周期函数
   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // 监听切换TAB栏事件
     /*_tabController.addListener(() {
       // print(_tabController.index); // 会触发两次
       if (_tabController.animation!.value == _tabController.index) {
         print(_tabController.index);
       } // 只会打印一次
     });*/
  }

  // 销毁生命周期函数
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(38), // AppBar的高度
        child: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.yellow, // AppBar的背景颜色
          title: SizedBox(
            height: 30,
            child: TabBar(
              labelStyle: const TextStyle(
                fontSize: 13
              ),
              indicatorWeight: 2, // 底部指示器的厚度
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              onTap: (index) { // 只能监听点击事件 不能监听滑动
                print(index);
              },
              tabs: const [
                Tab(
                  child: Text("Follow"),
                ),
                Tab(
                  child: Text("Hot"),
                ),
                Tab(
                  child: Text("Video"),
                )
              ],
            ),
          )
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveWrapper(
            child: Center(
              child: ElevatedButton(
                child: const Text("Search"),
                onPressed: () {
                  // 跳转路由
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SearchPage();
                      })
                  );
                },
              ),
            )
          ),
          KeepAliveWrapper(
              child: Center(
                child: ElevatedButton(
                  child: const Text("Hot"),
                  onPressed: () {
                    // 跳转路由
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const FormPage();
                        })
                    );
                  },
                ),
              )
          ),
          KeepAliveWrapper(
              child: Center(
                child: ElevatedButton(
                  child: const Text("News"),
                  onPressed: () {
                    // 跳转路由
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const NewsPage(aid: 12, title: "What If",);
                        })
                    );
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}
