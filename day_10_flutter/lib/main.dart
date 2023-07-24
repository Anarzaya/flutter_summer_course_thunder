import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hello Body',
            style: TextStyle(fontSize: 34, color: Color(0xFF342EEE)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.thumb_up),
      ),
    ),
  ));
}
