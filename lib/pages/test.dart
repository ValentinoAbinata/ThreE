import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
      ),
      body: Container(
              // jangan dihapus sampai aplikasi sudah selesai
              width: 375,
              height: 5, // Bisa disesuaikan jika perlu
              color: Colors.blue,
            ),
    );
  }
}
