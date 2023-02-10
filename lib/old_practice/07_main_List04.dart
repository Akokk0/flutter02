import 'package:flutter/material.dart';
import '../iconFont.dart';

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
        appBar: AppBar(title: const Text("Flutter Horizontal List"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.pinkAccent
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.green
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.black
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.blue
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.purpleAccent
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.yellowAccent
            ),
          ),
          Container(
            height: 120,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.orange
            ),
          ),
        ],
      ),
    );
  }
}

