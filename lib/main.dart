import 'package:flutter/material.dart';
import 'package:flutter02/router/router.dart';

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
      /*onGenerateRoute: (RouteSettings settings) {
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
      },*/

      onGenerateRoute: onGenerateRoute,
    );
  }
}
