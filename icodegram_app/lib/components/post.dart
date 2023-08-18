import 'package:flutter/material.dart';

class post extends StatelessWidget {
  final String profileImage;
  final String name;
  final String postImage;
  const post(
      {super.key,
      required this.profileImage,
      required this.name,
      required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                child: Center(
                  child: ClipOval(
                    child: Image.asset(profileImage),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 2),
                ),
              ),
              SizedBox(width: 10),
              Text(name),
            ],
          ),
          Image.asset(
            postImage,
            height: 375,
            width: 375,
          ),
        ],
      ),
    );
  }
}
