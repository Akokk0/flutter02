import 'package:flutter/material.dart';
import './res/listData.dart' show listData;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Dynamic List"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // 生成动态列表
  /* List<Widget> initListData() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("ジェルばんは---$i"),
      ));
    }
    return list;
  } */

  // 使用map生成动态列表
  List<Widget> initListData() {
    var tempList = listData.map((bookObj) {
      return ListTile(
        leading: Image.network(bookObj['imageUrl']!,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        title: Text(bookObj['title']!),
        subtitle: Text(bookObj['author']!),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    /* return ListView(
      children: initListData(),
    ); */
    
    // 使用builder生成动态列表
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(listData[index]['imageUrl']!,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          title: Text(listData[index]['title']!),
          subtitle: Text(listData[index]['author']!),
        );
      },
    );
  }
}

