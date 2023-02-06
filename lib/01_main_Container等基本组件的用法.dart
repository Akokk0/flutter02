import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Container"),),
        body: Column(
          children: const [
            MyApp(),
            MyButton(),
            MyText()
          ],
        ),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 配置Container容器内元素的方位
        width: 200,
        height: 200,
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          border: Border.all( // 边框
            color: Colors.amber,
            width: 2
          ),
          borderRadius: BorderRadius.circular(15), // 配置圆角
          boxShadow: const [ // 配置阴影效果
            BoxShadow(
              color: Colors.pinkAccent,
              blurRadius: 10.0
            )
          ],
          gradient: const RadialGradient(
            colors: [ Colors.pinkAccent, Colors.white ]
          )
        ),
        child: const Text("Hello Flutter", style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
      )
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Text("按钮", style: TextStyle(
        color: Colors.white,
        fontSize: 16
      ),),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: const Text("Hello I am FlutterHello I am FlutterHello I am FlutterHello I am FlutterHello I am FlutterHello I am Flutter",
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.redAccent,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.pinkAccent,
          decorationStyle: TextDecorationStyle.dashed
        ),
      ),
    );
  }
}
