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
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Layout"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  /* @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text("Hello Flutter"),
    );
  } */

  /* @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconContainer(
            backgroundColor: Colors.orange,
            icon: Icons.tiktok,
          ),
          IconContainer(
            backgroundColor: Colors.red,
            icon: Icons.apple,
          ),
          IconContainer(
            backgroundColor: Colors.blue,
            icon: Icons.paypal,
          ),
        ],
      )
    );
  } */

  /*@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: double.infinity, // 自动占满父元素
        width: double.infinity, // 自动占满父元素
        child: Row( // 外部没有Container 行是自适应的
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer(
              backgroundColor: Colors.orange,
              icon: Icons.tiktok,
            ),
            IconContainer(
              backgroundColor: Colors.red,
              icon: Icons.apple,
            ),
            IconContainer(
              backgroundColor: Colors.blue,
              icon: Icons.paypal,
            ),
          ],
        ),
      )
    );
  }*/

  /*@override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity, // 自动占满父元素
          width: double.infinity, // 自动占满父元素
          child: Column( // 外部没有Container 行是自适应的
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 和Row相反
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconContainer(
                backgroundColor: Colors.orange,
                icon: Icons.tiktok,
              ),
              IconContainer(
                backgroundColor: Colors.red,
                icon: Icons.apple,
              ),
              IconContainer(
                backgroundColor: Colors.blue,
                icon: Icons.paypal,
              ),
            ],
          ),
        )
    );*/

  // Flex + Expanded
  /*@override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row( // 使用Flex布局设置宽无效
          children: [
            Expanded(
              flex: 1,
              child: IconContainer( // 这个元素设置宽度是没有效果的
                backgroundColor: Colors.orange,
                icon: Icons.tiktok,
              ),
            ),
            Expanded(
              flex: 2,
              child: IconContainer(
                  backgroundColor: Colors.red,
                  icon: Icons.apple,
                )
            )
          ],
        )
    );
  }*/

  // Flex
  /*@override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Flex( // 使用Flex布局设置宽无效
          direction: Axis.horizontal, // Flex必须添加该属性，指明是行排列还是列排列
          children: [
            Expanded(
              flex: 1,
              child: IconContainer( // 这个元素设置宽度是没有效果的
                backgroundColor: Colors.orange,
                icon: Icons.tiktok,
              ),
            ),
            Expanded(
                flex: 2,
                child: IconContainer(
                  backgroundColor: Colors.red,
                  icon: Icons.apple,
                )
            )
          ],
        )
    );
  }*/

  // 实现动态搜索框
  /*@override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row( // 使用Flex布局设置宽无效
          children: [
            // 左边使用Expanded
            Expanded(
              flex: 1,
              child: IconContainer( // 这个元素设置宽度是没有效果的
                backgroundColor: Colors.orange,
                icon: Icons.tiktok,
              ),
            ),
            // 右边直接写组件
            IconContainer(
              backgroundColor: Colors.red,
              icon: Icons.apple,
            )
          ],
        )
    );
  }*/

  // 实现小案例
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black54,
        ),
        const SizedBox(height: 8,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Colors.pinkAccent,
              ),
            ),
            const SizedBox(width: 8,),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.lightBlueAccent,
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        )
      ],
    );
  }
}

// 自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  Color backgroundColor;
  IconData icon;
  IconContainer({super.key, this.color = Colors.white, required this.icon, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: backgroundColor,
      child: Center(child: Icon(icon, color: color, size: 35,)),
    );
  }

}

