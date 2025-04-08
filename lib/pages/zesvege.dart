import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Zesvege extends StatefulWidget {
  const Zesvege({super.key});

  @override
  State<Zesvege> createState() => _ZesvegeState();
}

class _ZesvegeState extends State<Zesvege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 101, 94, 0.3),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/Navbar.svg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.contain, // test maybe need some work
        ),
      ),
    );
  }
}
