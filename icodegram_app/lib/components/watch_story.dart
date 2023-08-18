import 'package:flutter/material.dart';

class watchStory extends StatelessWidget {
  final String text;
  final String image;
  const watchStory({super.key, required this.text, required this.image});

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
              child: ClipOval(
                child: Image.asset(image),
              )
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