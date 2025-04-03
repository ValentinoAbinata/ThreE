import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 236, 232, 1.0),
      body: Stack(
        fit: StackFit.expand, // Agar background penuh
        children: [
          SvgPicture.asset(
            'assets/images/ThreE_WelcomeScreen.svg', 
            fit: BoxFit.contain,
          ),

          // Button "Next"
          Positioned(
            bottom: 50, // Jarak dari bawah
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Pindah ke halaman berikutnya
                  Navigator.pushReplacementNamed(context, '/my_home_page');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna tombol
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Ukuran tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Tombol bulat
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
