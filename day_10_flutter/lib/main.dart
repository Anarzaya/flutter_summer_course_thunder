import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  final MySuperApp superapp = MySuperApp();
  runApp(superapp);
}

class MySuperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Anarzaya'),
        ),
        body: Container(
          child: Center(
            child: Image.asset(
              'assets/images/download.jpeg',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: printMe,
          child: Image.asset('assets/images/download.jpeg'),
        ),
      ),
    );
  }
}

void printMe() {
  print('Hello, me');
}
