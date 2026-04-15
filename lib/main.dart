import 'package:flutter/material.dart';
import 'package:malibook/pages/book/BooksPage.dart';
import 'package:malibook/pages/home/HomePage.dart';

import 'package:malibook/pages/splash/SplashPage.dart';

void main() {
  runApp(const MaliBookApp());
}

class MaliBookApp extends StatelessWidget {
  const MaliBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaliBook',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFFA0522D),
        fontFamily: 'Roboto',
      ),
      home: const BooksPage(),
    );
  }
}
