import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print("@");
              },
              child: const Text(
                "普通按钮",
              ),
            ),
            TextButton(
                onPressed: () {
                  print("#");
                },
                child: const Text("文本按钮")),
            OutlinedButton(
                onPressed: () {
                  print("#");
                },
                child: const Text(
                  "边框按钮",
                )),
            IconButton(
                onPressed: () {
                  print("tiktok");
                },
                icon: const Icon(Icons.tiktok)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.tiktok),
                label: const Text("TikTok")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.apple),
                label: const Text("Apple")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.paypal),
                label: const Text("PayPal")),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent), // 背景颜色
                  foregroundColor:
                      MaterialStateProperty.all(Colors.black)), // 文字图标背景颜色
              child: const Text("按钮样式"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 44,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.tiktok),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent), // 背景颜色
                    foregroundColor:
                        MaterialStateProperty.all(Colors.black)), // 文字图标背景颜色
                label: const Text("大按钮"),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.tiktok),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.greenAccent), // 背景颜色
              foregroundColor:
                  MaterialStateProperty.all(Colors.black)), // 文字图标背景颜色
          label: const Text("铺满按钮"),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)))),
              child: const Text("圆角按钮"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder(
                      side: BorderSide(color: Colors.white)))),
              child: const Text("圆形按钮"),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder(
                        side: BorderSide(color: Colors.white, width: 7)))),
                child: const Text("大圆形按钮"),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Colors.blue))),
                child: const Text("改变颜色的按钮"))
          ],
        )
      ],
    );
  }
}
