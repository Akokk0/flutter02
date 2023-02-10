import 'package:flutter/material.dart';
import '/pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

// Tabs底部导航栏组件切换
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: const Center(
        child: Tabs(),
      ),
    );
  }
}
