import 'package:flutter/material.dart';
import './iconFont.dart';

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
        appBar: AppBar(title: const Text("Flutter News List"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
          title: const Text("国铁集团"),
          subtitle: const Text(
            "米軍高官によると、Ｆ２２戦闘機が現地時間４日午後２時半過ぎ、東岸沖約１１キロの上空でミサイルを使用して撃墜した。州内３空港では撃墜直前に発着便の飛行停止命令が出されたが、運航はその後再開した。",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
          title: const Text("国铁集团"),
          subtitle: const Text(
            "米軍高官によると、Ｆ２２戦闘機が現地時間４日午後２時半過ぎ、東岸沖約１１キロの上空でミサイルを使用して撃墜した。州内３空港では撃墜直前に発着便の飛行停止命令が出されたが、運航はその後再開した。",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
          title: const Text("国铁集团"),
          subtitle: const Text(
            "米軍高官によると、Ｆ２２戦闘機が現地時間４日午後２時半過ぎ、東岸沖約１１キロの上空でミサイルを使用して撃墜した。州内３空港では撃墜直前に発着便の飛行停止命令が出されたが、運航はその後再開した。",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
          title: const Text("国铁集团"),
          subtitle: const Text(
            "米軍高官によると、Ｆ２２戦闘機が現地時間４日午後２時半過ぎ、東岸沖約１１キロの上空でミサイルを使用して撃墜した。州内３空港では撃墜直前に発着便の飛行停止命令が出されたが、運航はその後再開した。",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://i0.hdslb.com/bfs/new_dyn/c25e64783d6a8f5b32e460e70c64302256386242.jpg"),
          title: const Text("国铁集团"),
          subtitle: const Text(
            "米軍高官によると、Ｆ２２戦闘機が現地時間４日午後２時半過ぎ、東岸沖約１１キロの上空でミサイルを使用して撃墜した。州内３空港では撃墜直前に発着便の飛行停止命令が出されたが、運航はその後再開した。",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(),
      ],
    );
  }
}

