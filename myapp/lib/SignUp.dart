import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return (Material(
      child: Container(
        color: Color.fromARGB(255, 211, 213, 235),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Image.asset("assets/images/logo.png", height: 70)),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Sign Up Now",
                    style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Please fill the details and create account",
                  style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Fullname', labelText: 'Fullname')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Email', labelText: 'Email')),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 125,
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                            )),
                          ),
                          FlatButton(
                              onPressed: () {
                                setState(() {
                                  show = !show;
                                });
                              },
                              child: show
                                  ? Image.asset("assets/images/show.png",
                                      height: 50)
                                  : Image.asset("assets/images/hide.png",
                                      height: 50))
                        ],
                      )),
                ],
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Text("Already have an account ? Sign In"),
          Text("Or Connect with"),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/facebook.png", height: 70),
                  Image.asset("assets/images/twitter.png", height: 70),
                  Image.asset("assets/images/google.png", height: 70)
                ],
              ))
        ]),
      ),
    ));
  }
}
