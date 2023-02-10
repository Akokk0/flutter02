import 'package:flutter/material.dart';
import 'package:flutter02/pages/router/form.dart';
import 'package:flutter02/pages/router/news.dart';
import 'package:flutter02/pages/router/search.dart';
import 'package:flutter02/pages/tabs.dart';

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
      // home: const MyHomePage(),
      initialRoute: "/", // 初始化路由，相当于默认路由
      routes: {
        "/": (context) => const MyHomePage(),
        "/news": (context) => const NewsPage(),
        "/search": (context) => const SearchPage(),
        "form": (context) => const FormPage()
      },
    );
  }
}
