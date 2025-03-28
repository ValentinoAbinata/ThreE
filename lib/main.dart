import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/my_home_page.dart';
import 'pages/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThreE',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Semua teks pakai Poppins
      ),
    );
  }
}