import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/my_home_page.dart';
import 'pages/welcome_screen.dart';
import 'pages/form_create.dart';
import 'pages/ztest.dart'; // test
import 'pages/zesvege.dart'; // test

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threee',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Awal di Welcome Screen
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/my_home_page': (context) => const MyHomePage(),
        '/form_create': (context) => const FormCreate(),
        '/test' : (context) => const Ztest(), // test
        '/esvege' : (context) => const Zesvege(), // test
      },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Semua teks pakai Poppins
      ),
    );
  }
}