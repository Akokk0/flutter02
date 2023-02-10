import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  final int aid;
  const NewsPage({Key? key, required this.aid, this.title = "News"}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    print(widget.title);
    print(widget.aid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      appBar: AppBar(
        title: const Text("News Page"),
      ),
      body: const Center(
        child: Text("News Page"),
      ),
    );
  }
}
