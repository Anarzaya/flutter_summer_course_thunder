import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/screens/login_screen.dart';
import 'package:lesson_19_flutter/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('connected');
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}