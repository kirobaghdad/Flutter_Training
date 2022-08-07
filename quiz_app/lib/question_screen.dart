import 'package:flutter/material.dart';
import 'dart:math';
import 'answer.dart';

class Question extends StatelessWidget {
  final Function answerQuestion;
  final question;

  const Question(
      {Key? key, @required this.question, required this.answerQuestion})
      : super(key: key);

  List<Answer> answers() {
    List<Answer> list = [];

    list.add(Answer(
      answer: question['correctAnswer'],
      answerQuestion: answerQuestion,
      check: true,
    ));

    for (var i in question['incorrectAnswers']) {
      list.add(Answer(
        answer: i,
        answerQuestion: answerQuestion,
        check: false,
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(150),
          Random().nextInt(255)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              child: Text(
                question['category'],
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
                  question['question'],
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
              children: answers(),
            ),
          )
        ],
      ),
    ));
  }
}





// class Question extends StatefulWidget {
//   final dynamic question;
//   final Function answerQuestion;

//   Question({this.question, required this.answerQuestion});

//   @override
//   State<Question> createState() => _QuestionState();
// }

// class _QuestionState extends State<Question> {
//   dynamic answers;

//   @override
//   void initState() {
//     super.initState();
    
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ();
//   }
// }



/*
Container(
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
    )


    answers = [
      Answer(
        answer: widget.question['correctAnswer'],
        answerQuestion: widget.answerQuestion,
      )
    ];

    for (var answer in widget.question['incorrectAnswers']) {
      answers.add(Answer(
        answer: answer,
        answerQuestion: widget.answerQuestion,
      ));
    }
    answers.shuffle();

    */
