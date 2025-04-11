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
                const SizedBox(height: 30,),

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
