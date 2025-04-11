import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'my_home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

// Membuat Delay
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0), () { // testing jadiin 3
      Navigator.of(context).pushReplacement(_createFadeRoute());
    });
  }

// Fade ke MyHomePage
  Route _createFadeRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const MyHomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          // ganti ini untuk mengganti style
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 800),
    );
  }

// isi scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 101, 94, 1.0),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/Threee.svg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.contain, // test maybe need some work
        ),
      ),
    );
  }
}
