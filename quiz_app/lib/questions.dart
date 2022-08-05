import 'package:flutter/material.dart';
import 'question_screen.dart';

class Questions extends StatefulWidget {
  final List<dynamic>? questions;

  const Questions({Key? key, @required this.questions}) : super(key: key);
  @override
  State<Questions> createState() => _QuestionsState(questions);
}

class _QuestionsState extends State<Questions> {
  @override
  initState() {
    super.initState();
  }

  _QuestionsState(this.questions);

  List<dynamic>? questions;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Question(question: questions![0]),
    ));
  }
}

// Question(question: questions[0])