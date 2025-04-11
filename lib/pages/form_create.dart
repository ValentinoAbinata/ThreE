import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class FormCreate extends StatefulWidget {
  const FormCreate({super.key});

  @override
  State<FormCreate> createState() => _FormCreateState();
}

class _FormCreateState extends State<FormCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Stack Navbar
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
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
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black26,
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            "Tambahkan Jadwal",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Nama Matkul',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField( // testing bikin ini jadi only char
                                decoration: InputDecoration(
                                  labelText: 'Kelas(A,B,C,D,E)',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Nama Dosen',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'SKS',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/my_home_page');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(44, 101, 94, 1.0),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: const Text('Submit')),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
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
