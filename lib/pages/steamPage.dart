import 'package:flutter/material.dart';

class SteamPage extends StatefulWidget {
  const SteamPage({Key? key}) : super(key: key);

  @override
  State<SteamPage> createState() => _SteamPageState();
}

class _SteamPageState extends State<SteamPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Steam Page"),
    );
  }
}
