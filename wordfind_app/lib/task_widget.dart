import 'dart:math';
import 'package:flutter/material.dart';
import 'models/char_model.dart';
import 'models/task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;

  const TaskWidget(
      {required this.size, required this.listQuestions, super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionsIndex = 0;
  int hintCount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
    generatePuzzle();
  }

  @override
  Widget build(BuildContext context) {
    TaskModel currentQuestion = listQuestions[currentQuestionsIndex];
    return SizedBox(
        width: double.maxFinite,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  // onTap: generateHint(),
                  child: Row(
                    children: [
                      InkWell(
                        // onTap: generatePuzzle(left: true),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      InkWell(
                        // onTap: generatePuzzle(next: true),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints(
                          maxWidth: size.width / 2 * 1.5,
                        ),
                        child: Image.network(
                          currentQuestion.pathImage,
                          fit: BoxFit.contain,
                        ),
                      )),
                      Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        child: Text(
                          currentQuestion.question,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFE86B02),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          alignment: Alignment.center,
                          child: LayoutBuilder(builder: (context, constraints) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: currentQuestion.puzzles.map((puzzle) {
                                Color? color;
                                

                                return InkWell();
                              }).toList(),
                            );
                          }))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
