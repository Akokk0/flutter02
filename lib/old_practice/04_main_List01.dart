import 'package:flutter/material.dart';
import './iconFont.dart';

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
        appBar: AppBar(title: const Text("Flutter Icon List"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text("TikTok"),
          leading: Icon(Icons.tiktok),
        ),
        Divider(),
        ListTile(
          title: Text("首页"),
          leading: Icon(Icons.home),
        ),
        Divider(),
        ListTile(
          title: Text("全部订单"),
          leading: Icon(Icons.assignment, color: Colors.red),
        ),
        Divider(),
        ListTile(
          title: Text("待付款"),
          leading: Icon(Icons.payment, color: Colors.green),
        ),
        Divider(),
        ListTile(
          title: Text("我的收藏"),
          leading: Icon(Icons.favorite, color: Colors.lightGreen,),
        ),
        Divider(),
        ListTile(
          title: Text("在线客服"),
          leading: Icon(Icons.people, color: Colors.black54,),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
      ],
    );
  }
}

