import 'package:flutter/material.dart';
import 'dart:math';
import 'questions.dart';
import 'package:dio/dio.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<dynamic>? questions;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    List<dynamic> q =
        (((await Dio().get('https://the-trivia-api.com/api/questions')).data));
    setState(() {
      questions = q;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Color.fromARGB(255, Random().nextInt(150),
            Random().nextInt(255), Random().nextInt(255)),
        body: Center(
          child: TextButton(
            child: const Text(
              "Start",
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Questions(questions)));
            },
          ),
        )));
  }
}
