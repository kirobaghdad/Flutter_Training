import 'package:flutter/material.dart';
import 'log_in.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
              child: Image.asset("assets/images/logo.png", height: 70)),
          Image.asset("assets/images/user.png", height: 300),
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
            child: Text(
              "Create an account and access thousand of cool stuffs",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              child: Container(
                color: Colors.red,
                width: 300,
                height: 50,
                child: const Center(
                  child: Text(
                    "Getting Started",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogIn()))
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
