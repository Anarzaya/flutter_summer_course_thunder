import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iCodegram',
      theme: ThemeData(
        fontFamily: 'Lobster',
      ),
      home: const LoginPage(),
    );
  }
}


