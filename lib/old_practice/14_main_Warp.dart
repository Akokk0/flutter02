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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Wrap"),
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
    // Warp组件的使用
    /* return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 30, // 水平间距
          runSpacing: 10, // 垂直间距
          // direction: Axis.vertical, // 按照哪个轴排列
          children: [
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
            Button("TikTok", icon: Icons.apple, onPressed: () {}),
          ],
        )); */

    // 小案例
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "热搜",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const Divider(),
            Wrap(
              spacing: 10,
              runSpacing: 12,
              children: [
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
                Button("女装", onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "历史记录",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            const Divider(),
            Column(
              children: const [
                ListTile(
                  title: Text("女装"),
                ),
                Divider(),
                ListTile(
                  title: Text("手机"),
                ),
                Divider(),
              ],
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(60),
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: const Text("清空历史记录")),
            )
          ],
        ),
        Row(
          children: [
            Container(
              height: 44,
              width: 44,
              margin: const EdgeInsets.only(right: 25),
              child: const Icon(Icons.arrow_left),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 44,
                color: Colors.grey,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("搜索"))
          ],
        ),
      ],
    );

    /* return ListView(
      children: [
        Row(
          children: [
            Text("热搜", style: Theme.of(context).textTheme.titleLarge,)
          ],
        )
      ],
    ); */
  }
}

// 自定义button组件
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;

  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
