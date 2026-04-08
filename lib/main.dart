import 'package:flutter/material.dart';
import 'package:malibook/pages/book/BooksPage.dart';
import 'package:malibook/pages/home/HomePage.dart';
import 'package:malibook/pages/splash/SplashScreen.dart';

void main() {
  runApp(const MaliBookApp());
}

const primaryColor = Color(0xFFA0522D); // brown exact tone

class MaliBookApp extends StatelessWidget {
  const MaliBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaliBook',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        fontFamily: 'Roboto',
      ),
      home: const BooksPage(),
    );
  }
}
