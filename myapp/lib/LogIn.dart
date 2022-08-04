import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'SignUp.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return (Material(
      child: Container(
          color: Color.fromARGB(255, 211, 213, 235),
          child: Center(
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset("assets/images/logo.png", height: 70)),
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Log In Now",
                        style: TextStyle(
                            fontSize: 30,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    "Please Log into continue using our app",
                    style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        color: Colors.black),
                  ),
                  Form(
                      child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                        child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Email', labelText: 'Email')),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Password', labelText: 'Password')),
                      )
                    ],
                  )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: TextButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()))
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 30,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              Text("Don't have an account ? Sign Up"),
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
          )),
    ));
  }
}
