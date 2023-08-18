import 'package:flutter/material.dart';

class addStory extends StatelessWidget {
  final String text;
  const addStory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      width: 75,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            child: Center(
              child: Icon(
                Icons.add,
                size: 18,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
          SizedBox(height: 5),
          Text(text)
        ],
      ),
    );
  }
}
