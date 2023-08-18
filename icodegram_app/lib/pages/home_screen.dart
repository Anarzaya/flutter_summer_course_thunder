import 'package:flutter/material.dart';
import 'package:icodegram_app/components/add_story.dart';
import 'package:icodegram_app/components/post.dart';
import 'package:icodegram_app/components/watch_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'iCodegram',
                style: TextStyle(
                    fontSize: 24, fontFamily: 'Lobster', color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  addStory(text: 'Add'),
                  SizedBox(width: 18.5),
                  watchStory(
                    text: 'Төгөлдөр',
                    image: 'assets/images/story.png',
                  ),
                  SizedBox(width: 18.5),
                  watchStory(
                    text: 'Сарнай',
                    image: 'assets/images/story.png',
                  ),
                  SizedBox(width: 18.5),
                  watchStory(
                    text: 'Ханхүү',
                    image: 'assets/images/story.png',
                  ),
                ],
              ),
              SizedBox(height: 26),
              Column(
                children: [
                  post(
                    profileImage: 'assets/images/story.png',
                    name: 'Төгөлдөр',
                    postImage: 'assets/images/post_image.jpg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
