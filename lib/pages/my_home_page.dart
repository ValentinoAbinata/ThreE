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
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        title: const Text("myhomepage"),
      ),
      body: Center(
          // center
          child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/Navbar.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain, // test maybe need some work
          ),
          SvgPicture.asset(
            'assets/images/Navbar.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain, // test maybe need some work
          ),
          SvgPicture.asset(
            'assets/images/Threee.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain, // test maybe need some work
          ),
        ],
      )),
    );
  }
}
