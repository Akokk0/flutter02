import 'package:flutter/material.dart';
import 'package:flutter02/pages/router/search.dart';

class ApplePage extends StatefulWidget {
  const ApplePage({Key? key}) : super(key: key);

  @override
  State<ApplePage> createState() => _ApplePageState();
}

class _ApplePageState extends State<ApplePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(38),
        child: AppBar(
          title: SizedBox(
            height: 30,
            child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              indicatorPadding: const EdgeInsets.all(2),
              tabs: const [
                Tab(
                  text: "新闻",
                ),
                Tab(
                  text: "热点",
                ),
                Tab(
                  text: "视频",
                )
              ],
            ),
          )
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SearchPage())
                  );
                },
                child: const Text("普通路由跳转---SearchPage"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/news");
                },
                child: const Text("命名路由跳转---SearchPage"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/form", arguments: {
                    "title": "我是命名路由传值",
                    "aid": 20
                  });
                },
                child: const Text("命名路由传值---FormPage"),
              )
            ],
          ),
          ListView(
            children: const [
              Center(
                child: Text("热点"),
              )
            ],
          ),
          ListView(
            children: const [
              Center(
                child: Text("视频"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
