import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? result;
  final int? numOfQuestions;
  final Function? resetQuiz;

  const Result(
      {Key? key,
      @required this.result,
      @required this.numOfQuestions,
      @required this.resetQuiz})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        backgroundColor: Color.fromARGB(255, 70, 222, 171),
      ),
      backgroundColor: Color.fromARGB(255, 141, 187, 224),
      body: Center(
          child: Text('${result.toString()} / ${numOfQuestions.toString()}',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ))),
    ));
  }
}
