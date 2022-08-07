import 'package:flutter/material.dart';
import 'question_screen.dart';
import 'result.dart';

class Questions extends StatefulWidget {
  List<dynamic>? questions;

  Questions(this.questions);
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  dynamic score = 0;
  dynamic index;
  void _answerQuestion(bool s) {
    setState(() {
      if (s) score += 1;
      index++;
    });
  }

  @override
  initState() {
    super.initState();
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: index < widget.questions!.length
            ? Question(
                question: widget.questions![index],
                answerQuestion: _answerQuestion)
            : Result(result: score, numOfQuestions: widget.questions!.length)));
  }
}
