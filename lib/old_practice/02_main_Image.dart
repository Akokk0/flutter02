import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Image"),
      ),
      body: Column(
        children: const [
          MyApp(),
          SizedBox(height: 20,),
          Circular(),
          SizedBox(height: 20,),
          ClipImage(),
          SizedBox(height: 20,),
          LocalImage()
        ],
      )
    ),
  ));
}

// 加载图片
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Image.network(
          "https://i0.hdslb.com/bfs/new_dyn/85ff93a6836e95847eb1bd2dba1934bd471303350.jpg",
          // alignment: Alignment.topLeft,
          // scale: 2,
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeatX,
          // width: 100,
          // height: 100,
        ),
      ),
    );
  }
}

// 实现一个圆形图片
class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      // margin: const EdgeInsets.fromLTRB(0, 20, 0, 0), // 还可以使用SizeBox甚至间距
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
        image: const DecorationImage(
          image: NetworkImage(
              "https://i0.hdslb.com/bfs/new_dyn/85ff93a6836e95847eb1bd2dba1934bd471303350.jpg"
          ),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    );
  }
}

// 使用ClipOval直接实现圆形图片
class ClipImage extends StatelessWidget {
  const ClipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://i0.hdslb.com/bfs/new_dyn/831df3f8fd4df97d9857898ab2f6cd7437123621.jpg@1036w.webp",
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

// 加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent
      ),
      child: Image.asset(
          "images/IMG_4970.JPG",
        fit: BoxFit.cover,
      ),
    );
  }
}

