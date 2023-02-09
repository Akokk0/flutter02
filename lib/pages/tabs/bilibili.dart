import 'package:flutter/material.dart';

class BilibiliPage extends StatefulWidget {
  const BilibiliPage({Key? key}) : super(key: key);

  @override
  State<BilibiliPage> createState() => _BilibiliPageState();
}

class _BilibiliPageState extends State<BilibiliPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Bilibili"),
    );
  }
}

