import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Stack Navbar
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Flutter Demo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_rounded),
            tooltip: 'Bantuan',
            onPressed: () {
              Navigator.pushNamed(context, '/test');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              'assets/images/Navbar.svg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
          ),

          ListView(
            padding: const EdgeInsets.only(top: kToolbarHeight + 24),
            children: [
              // test if empty
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Hallo User ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.waving_hand, color: Colors.orange),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Sudahkah Anda Presensi Hari Ini?'),
              ),
              const SizedBox(height: 20),

              // GridView dengan 1 item statis
              GridView(
                shrinkWrap: true, // Agar tidak mengambil seluruh tinggi layar
                physics: const NeverScrollableScrollPhysics(),  // Menghindari konflik scroll dengan ListView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Hanya 1 kolom
                  mainAxisExtent: 80, // Ini membatasi tinggi item agar lebih kecil
                ),
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
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
          ),
        ],
      ),
    );
  }
}
