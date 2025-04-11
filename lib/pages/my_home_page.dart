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
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(44, 101, 94, 1.0),
          tooltip: 'Increment',
          onPressed: (){
            Navigator.pushNamed(context, '/form_create');
          }, // testing create form
          child: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
      appBar: AppBar(
        automaticallyImplyLeading: false, // ea gabisa balik
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/images/LogoThreee.svg',
          width: 25,
          height: 25,
          fit: BoxFit.contain, // test maybe need some work
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_rounded),
            color: Colors.white,
            tooltip: 'Bantuan',
            onPressed: () {
              Navigator.pushNamed(context, '/test');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                // test if empty (belom nambahin apa2)
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Hallo User ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.waving_hand, color: Colors.orange),
                  ],
                ),
                const Text('Sudahkah Anda Presensi Hari Ini?'),
                const SizedBox(height: 20),




                Column(
                  children: [
                    Container(
                      // test, if alpha = 2 color red
                      margin: const EdgeInsets.all(8),
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
                      padding: const EdgeInsets.all(12),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Praktikum Sistem Cerdas Perangkat Lunak (IF-B)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            height: 15,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          Text(
                            "SKS : 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Pak Valentino Abinata"),
                          Text("Alpha : 0"),
                          Text("Alpha di Spada : 1"),
                        ],
                      ),
                    ),
                  ],
                ),
                
                
                
                
                const SizedBox(height: 80,),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              'assets/images/Navbar.svg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
