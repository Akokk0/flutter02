import 'package:flutter/material.dart';
import 'package:flutter02/pages/tabs.dart';
import 'package:flutter02/pages/router/news.dart';
import 'package:flutter02/pages/router/search.dart';
import 'package:flutter02/pages/router/form.dart';

// 1、定义路由
final Map routes = {
  "/": (context) => const MyHomePage(),
  "/news": (context) => const NewsPage(),
  "/search": (context) => const SearchPage(),
  "/form": (context, {arguments}) => FormPage(arguments: arguments,)
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
    }
  }
  return null;
};
