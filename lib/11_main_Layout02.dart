import 'dart:math';

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
      theme: ThemeData(primarySwatch: Colors.yellow),
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
  const MyHomePage({Key? key}) : super(key: key);

  // Stack组件使用
  /* @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.lightGreenAccent,
        ),
        Container(
          height: 300,
          width: 200,
          color: Colors.lightBlueAccent,
        ),
        const Text("Hello Flutter")
      ],
    );
  } */

  // Container与Stack组合使用
  /* @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack( // 相当于外部容器进行定位 如果没有外部容器就相对于整个屏幕
        children: [
          Positioned(
            left: 5,
            bottom: 5,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          ),
          const Positioned(top: 15, right: 15, child: Text("Hello Flutter"))
        ],
      ),
    );
  } */

  // 使用Stack进行固定定位 直接使用Row
  /* @override
  Widget build(BuildContext context) {
    return Stack(
      // 相当于外部容器进行定位 如果没有外部容器就相对于整个屏幕
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 44),
          children: const [
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
          ],
        ),
        Row(children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: 44,
              color: Colors.redAccent,
              child: const Text("二级导航", style: TextStyle(color: Colors.white)),
            ),
          ),
        ])
      ],
    );
  } */

  // 使用Stack进行固定定位 使用Positioned
  /* @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      // 相当于外部容器进行定位 如果没有外部容器就相对于整个屏幕
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 44),
          children: const [
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width, // 配置子元素的宽度和高度
            height: 54,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    color: Colors.redAccent,
                    child: const Text("二级导航",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ))
      ],
    );
  } */

  // 使用Stack进行固定定位 使用Positioned(优化)
  /* @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      // 相当于外部容器进行定位 如果没有外部容器就相对于整个屏幕
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 44),
          children: const [
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
            ListTile(title: Text("I am a Flutter Widget")),
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          width: size.width, // 配置子元素的宽度和高度
          height: 54,
          child: Container(
            alignment: Alignment.center,
            height: 55,
            color: Colors.redAccent,
            child: const Text("二级导航", style: TextStyle(color: Colors.white)),
          ),
        )
      ],
    );
  } */

  // Align的使用
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: size.width,
        height: 300,
        color: Colors.lightBlueAccent,

        // 直接使用Align
        /* child: const Align(
        alignment: Alignment.center,
        child: Text("Hello Flutter"),
      ), */

        // 或使用Center组件
        /* child: const Center(
        child: Text("Hello Flutter"),
      ), */

        // Alignment还可通过算法计算位置
        /* child: const Align(
        alignment: Alignment(-0.5, 0.5),
        child: Text("Hello Flutter"),
      ), */

        // Stack + Align
        child: Column(
          children: [
            SizedBox( // 使用Align实现
              width: double.infinity,
              height: 40,
              child: Stack(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("收藏"),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("购买"),
                  ),
                ],
              ),
            ),
            SizedBox( // 使用Positioned实现
              width: double.infinity,
              height: 40,
              child: Stack(
                children: const [
                  Positioned(
                    left: 10,
                    child: Text("收藏"),
                  ),
                  Positioned(
                    right: 10,
                    child: Text("购买"),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
