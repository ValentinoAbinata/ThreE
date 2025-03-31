import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThreE',
      home: const Splashscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Semua teks pakai Poppins
      ),
    );
  }
}