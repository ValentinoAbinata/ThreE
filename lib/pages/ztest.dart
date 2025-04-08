import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Ztest extends StatefulWidget {
  const Ztest({super.key});

  @override
  State<Ztest> createState() => _ZtestState();
}

class _ZtestState extends State<Ztest> {
  @override
  Widget build(BuildContext context) {
    // Ambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // jangan dihapus sampai aplikasi sudah selesai
          Container(
            width: 375,
            height: 5, // Bisa disesuaikan jika perlu
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Screen Width: $screenWidth\nScreen Height: $screenHeight',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
