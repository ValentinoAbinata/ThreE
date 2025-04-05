import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:threee/pages/my_home_page.dart';
import 'pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThreE',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Awal di Welcome Screen
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/my_home_page': (context) => const MyHomePage(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Semua teks pakai Poppins
      ),
    );
  }
}