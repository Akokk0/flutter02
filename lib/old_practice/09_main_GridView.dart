import 'dart:math';

import 'package:flutter/material.dart';
import '../res/listData.dart' show listData;

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
        appBar: AppBar(title: const Text("Flutter Dynamic GridView"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 使用builder生成动态列表
    /*return GridView.count(
      crossAxisCount: 4,
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.construction),
        Icon(Icons.ac_unit),
        Icon(Icons.tiktok),
        Icon(Icons.paypal),
        Icon(Icons.masks),
        Icon(Icons.supervisor_account),
        Icon(Icons.telegram),
        Icon(Icons.android),
        Icon(Icons.apple)
      ],
    );*/
    // 通过它可以快速创建横轴子元素为固定最大长度的GridView
    /* return GridView.extent(
      maxCrossAxisExtent: 180, // 横轴子元素的最大长度
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.construction),
        Icon(Icons.ac_unit),
        Icon(Icons.tiktok),
        Icon(Icons.paypal),
        Icon(Icons.masks),
        Icon(Icons.supervisor_account),
        Icon(Icons.telegram),
        Icon(Icons.android),
        Icon(Icons.apple)
      ],
    ); */

    // 动态生成外部的GridViewData
    /* List<Widget> _initGridViewData() {
      List<Widget> tempList = [];
      for(var i = 1; i <= 20; i++) {
        tempList.add(
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: Text("第$i个元素", style: const TextStyle(
              fontSize: 20
            ),),
          )
        );
      }
      return tempList;
    } */

    /* return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8, // 宽高比
      padding: const EdgeInsets.all(10),
      children: _initGridViewData(),
    ); */

    /* List<Widget> _initGridViewData() {
      return listData.map((bookObj) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(59, 0, 0, 0)
          )
        ),
        child: Column(children: [
          Image.network(bookObj["imageUrl"]!, height: 180, fit: BoxFit.cover,),
          const SizedBox(height: 15,),
          Text(bookObj["title"]!)
        ]),
      )).toList();
    } */

    /* return GridView.count(
      crossAxisCount: 2, // 快速创建横轴子元素固定长度的GridView
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8, // 宽高比
      padding: const EdgeInsets.all(10),
      children: _initGridViewData(),
    ); */

    Widget itemBuilder(context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(69, 0, 0, 0),
            width: 2
          ),
        ),
        child: Column(children: [
            Image.network(listData[index]["imageUrl"]!, height: 180, fit: BoxFit.cover,),
            const SizedBox(height: 15,),
            Text(listData[index]["title"]!)
          ],)
        );
    }

    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8
      ),
      itemBuilder: itemBuilder
      );
  }
}

