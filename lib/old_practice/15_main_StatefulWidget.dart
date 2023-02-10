import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const MyHomePage()
    );
  }
}

// 有状态组件(体验)
/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_numCount", style: Theme.of(context).textTheme.headline2,),
            const SizedBox(height: 60,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _numCount++;
                  });
                },
                child: const Text("增加")
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}*/

// StatefulWidget实现动态数组展示
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _list = [];
  int _arrayCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter StatefulWidget"),),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _list.add("我第$_arrayCount个新增的数组");
            _arrayCount++;
          });
        }
      ),
      body: ListView(
        children: _list.map((e) {
          return ListTile(
            title: Text(e),
          );
        }).toList(),
      ),
    );
  }
}

