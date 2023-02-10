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
        appBar: AppBar(title: const Text("Flutter Image List"),),
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
      children: <Widget>[
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22
            ),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
        Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
      ],
    );
  }
}

