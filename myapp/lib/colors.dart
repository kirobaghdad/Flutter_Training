import 'dart:math';

import 'package:flutter/material.dart';

class MyColors extends StatefulWidget {
  const MyColors({Key? key}) : super(key: key);

  @override
  State<MyColors> createState() => _ColorsState();
}

class _ColorsState extends State<MyColors> {
  List<dynamic> colors = [
    const Color.fromARGB(255, 17, 17, 171),
    const Color.fromARGB(255, 217, 17, 17),
    const Color.fromARGB(255, 58, 6, 6),
    const Color.fromARGB(255, 195, 71, 71),
    const Color.fromARGB(255, 28, 187, 41),
    const Color.fromARGB(255, 58, 6, 6),
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Column(
      children: [
        for (var i = 0; i < colors.length; i++)
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    colors[i] = Color.fromARGB(
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255));
                  });
                },
                child: Container(
                  color: colors[i],
                )),
          )
      ],
    )));
  }
}
