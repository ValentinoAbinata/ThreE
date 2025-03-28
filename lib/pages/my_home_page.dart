import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        appBar: AppBar(
          title: const Text("Flutter Demo Home Page"),
          // leading dst
        ),
        body: ListView(
          children: [
            Container(
              // jangan dihapus sampai aplikasi sudah selesai
              width: 375,
              height: 5, // Bisa disesuaikan jika perlu
              color: Colors.blue,
            ),
            // test if empty
            Row(
              children: [
                Text('Hallo User ',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Icon(Icons.waving_hand, color: Colors.orange),
              ],
            ),
            Text('Sudahkah Anda Presensi Hari Ini?'),
            SizedBox(height: 20),

            // GridView dengan 1 item statis
            GridView(
              shrinkWrap: true, // Agar tidak mengambil seluruh tinggi layar
              physics:
                  const NeverScrollableScrollPhysics(), // Menghindari konflik scroll dengan ListView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Hanya 1 kolom
                mainAxisExtent:
                    80, // Ini membatasi tinggi item agar lebih kecil
              ),
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(2),
                  child: const Center(
                    child: Text(
                      "Lorem Ipsum 23",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Colors.black26,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}