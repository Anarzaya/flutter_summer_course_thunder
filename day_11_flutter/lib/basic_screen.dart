import 'package:day_11_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to flutter'),
        actions: [
          Padding(padding: EdgeInsets.all(10), child: Icon(Icons.edit))
        ],
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text('I am a drawer'),
          )
        )
      ),
    );
  }

}
