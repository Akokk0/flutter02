import 'package:flutter/material.dart';
import '../iconFont.dart';

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
        appBar: AppBar(title: const Text("Flutter App"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20,),
        Icon(Icons.home, size: 40, color: Colors.pinkAccent,),
        Icon(Icons.tiktok, size: 40, color: Colors.black,),
        Icon(Icons.wechat, size: 40, color: Colors.green,),
        Icon(Icons.apple, size: 40, color: Colors.grey,),
        SizedBox(height: 20,),
        Icon(IconFont.bilibili_fill, size: 40, color: Colors.blue,),
        Icon(IconFont.alipay, size: 40, color: Colors.blue,),
        Icon(IconFont.flutter, size: 40, color: Colors.blue,),
        Icon(IconFont.steam, size: 40, color: Colors.black,),
        Icon(IconFont.bilibili_fill, size: 40, color: Colors.black,),
        Icon(Icons.youtube_searched_for, size: 40, color: Colors.black,),
        Icon(Icons.tiktok_rounded, size: 40, color: Colors.black,),
      ],
    );
  }
}

