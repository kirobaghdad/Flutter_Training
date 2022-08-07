import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestion;
  final bool check;

  Answer(
      {required this.answer,
      required this.answerQuestion,
      required this.check});

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 1))
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: TextButton(
          onPressed: () {
            answerQuestion(check);
          },
          child: Text(
            answer,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ));
  }
}
