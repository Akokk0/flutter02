import 'package:flutter/material.dart';
import '../res/listData.dart' show listData;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Card 组件的使用(初始化)
  /* List<Card> initCardData() {
    var list = <Card>[];
    for (var i = 0; i < 10; i++) {
      list.add(Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.pinkAccent,
        elevation: 10,
        margin: const EdgeInsets.all(10),
        child: Column(children: const [
          ListTile(
            title: Text("张三"),
            subtitle: Text("高级软件工程师"),
          ),
          Divider(),
          ListTile(
            title: Text("电话：1399999999"),
          ),
          ListTile(
            title: Text("地址：上海市陆家嘴"),
          )
        ]),
      ));
    }
    return list;
  } */

  // 动态生成Card组件
  List<Card> initCardData() {
    var list = listData.map((bookObj) => Card(
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                "https://i0.hdslb.com/bfs/new_dyn/6ba647acf42ae7dac7a9feffdc3fa872653812.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i0.hdslb.com/bfs/new_dyn/e93ac964d5c9f3784d8fdade81d0394b19432127.png"),
              ),
              title: Text(bookObj['title']!),
              subtitle: Text(bookObj['author']!),
            )
          ]),
        ));
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // 需求：页面上显示一个容器，宽度是屏幕的宽度，高度是容器高度的一半
    // AspectRatio控制屏幕宽高比
    /* return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        color: Colors.red,
      ),
    ); */

    // Card组件的使用
    /* return ListView(
      children: initCardData(),
    ); */

    // Card 组件样式实现
    /* return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                "https://i0.hdslb.com/bfs/new_dyn/6ba647acf42ae7dac7a9feffdc3fa872653812.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  "https://i0.hdslb.com/bfs/new_dyn/e93ac964d5c9f3784d8fdade81d0394b19432127.png",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: const Text("xxxxxxxxxx"),
              subtitle: const Text("xxxxxxxxxxx"),
            )
          ]),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                "https://i0.hdslb.com/bfs/new_dyn/6ba647acf42ae7dac7a9feffdc3fa872653812.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i0.hdslb.com/bfs/new_dyn/e93ac964d5c9f3784d8fdade81d0394b19432127.png"),
              ),
              title: Text("xxxxxxxxxx"),
              subtitle: Text("xxxxxxxxxxx"),
            )
          ]),
        ),
      ],
    ); */

    // 动态生成Card组件
    return ListView(
      children: initCardData(),
    );
  }

}
