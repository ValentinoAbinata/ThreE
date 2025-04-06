import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(150, 154, 88, 1.0),
      body: Stack(
        fit: StackFit.expand, // Agar background penuh
        children: [
          SvgPicture.asset(
            'assets/images/Threee.svg', 
            fit: BoxFit.contain, // test maybe need some work
          ),

          // Button "Next"
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/my_home_page');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(98, 67, 36, 1.0), // Warna tombol
                  padding: const EdgeInsets.symmetric(
                      horizontal: 90, vertical: 15), // Ukuran tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Tombol bulat
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
