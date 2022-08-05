import 'package:flutter/material.dart';
import 'dart:math';
import 'answer.dart';

class Question extends StatefulWidget {
  final dynamic question;
  const Question({Key? key, @required this.question}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState(question);
}

class _QuestionState extends State<Question> {
  dynamic answers;

  dynamic question;
  _QuestionState(this.question);
  @override
  void initState() {
    super.initState();
    answers = [Answer(answer: question['correctAnswer'])];

    for (var answer in question['incorrectAnswers']) {
      answers.add(Answer(answer: answer));
    }
    answers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(150),
            Random().nextInt(255)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                child: Text(
                  widget.question['category'],
                  style: const TextStyle(color: Colors.cyan, fontSize: 40),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 50),
              child: Container(
                child: Padding(
                  child: Text(
                    widget.question['question'],
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: GridView.count(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 4),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: answers,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
