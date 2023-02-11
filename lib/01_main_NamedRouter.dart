import 'package:flutter/material.dart';
import 'package:flutter02/pages/router/form.dart';
import 'package:flutter02/pages/router/news.dart';
import 'package:flutter02/pages/router/search.dart';
import 'package:flutter02/pages/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 1、定义路由
  final Map routes = {
    "/": (context) => const MyHomePage(),
    "/news": (context) => const NewsPage(),
    "/search": (context) => const SearchPage(),
    "/form": (context, {arguments}) => FormPage(arguments: arguments,)
  };

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      // home: const MyHomePage(),
      initialRoute: "/", // 初始化路由，相当于默认路由
      // 2、配置onGenerateRoute
      /*onGenerateRoute: (RouteSettings settings) {
        final String? name = settings.name;
        final Function? pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
            print(route);
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
        return null;
      },*/
      onGenerateRoute: (RouteSettings settings) {
        final String? name = settings.name;
        final pageContentBuilder = routes[name];

        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context)
            );
            return route;
          }
        }
        return null;
      },
    );
  }
}
