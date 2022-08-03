import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  static const List<Map> messages = [
    {
      'name': "Kirollos",
      'message': "This message a message1",
      "image": "assets/images/user.png"
    },
    {
      'name': "Youssef",
      'message': "This is a message2",
      "image": "assets/images/download.png"
    },
    {
      'name': "Omar",
      'message': "This is a message3",
      "image": "assets/images/download.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: Center(child: Text("My Gmail"))),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height) /
                  3,
              child: Center(
                  child: Text(
                "Container 1",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              )),
            ),
            Container(
              child: Center(
                  child: Text(
                "Container 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: ""),
              )),
              color: Colors.blue,
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height) /
                  3,
            ),
            Container(
              child: Center(
                  child: Text(
                "Container 1",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              )),
              color: Colors.red,
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height) /
                  3,
            )
          ],
        )
        /*Center(
            child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayInterval: Duration(seconds: 1)),
          items: messages.map((message) {
            return Builder(builder: (BuildContext Context) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 3)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Image.asset(
                              message['image'],
                              height: 60,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                          child: Column(children: [
                            Text(message['name'],
                                style: TextStyle(fontSize: 20)),
                            Text(message['message'],
                                style: TextStyle(fontSize: 20))
                          ]),
                        ),
                      ]));
            });
          }).toList(),
        ))*/
        ));
  }
}



/*
          Container(
            margin: const EdgeInsets.all(10),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/user.png',
                      height: 40,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(80, 10, 0, 10),
                    child: Column(children: [
                      Text("Kiro", style: TextStyle(fontSize: 20)),
                      Text("This is the message1!",
                          style: TextStyle(fontSize: 20))
                    ])),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/user.png',
                      height: 40,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(80, 10, 0, 10),
                    child: Column(children: [
                      Text("Kiro", style: TextStyle(fontSize: 20)),
                      Text("This is the message1!",
                          style: TextStyle(fontSize: 20))
                    ])),
              ],
            ),
          )
          */