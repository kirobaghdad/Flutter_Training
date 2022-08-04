import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:url_launcher/url_launcher.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return (Material(
      child: Center(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Image.asset("assets/images/logo.png", height: 70)),
          Column(
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Text(
                    "Log In Now",
                    style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold),
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Please Log into continue using our app",
                  style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Email', labelText: 'Email')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: TextFormField(
                              obscureText: show,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: () => {
                                      setState(() {
                                        show = !show;
                                      })
                                    },
                                    icon: Icon(
                                      show
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                  )
                ],
              )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()))
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Container(
                          color: Colors.red,
                          width: 300,
                          height: 50,
                          child: const Center(
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ))
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUp()))
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const Text("Or Connect with"),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://www.facebook.com'));
                    },
                    child:
                        Image.asset("assets/images/facebook.png", height: 70),
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://www.twitter.com'));
                    },
                    child: Image.asset("assets/images/twitter.png", height: 75),
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://www.google.com'));
                    },
                    child: Image.asset("assets/images/google.png", height: 60),
                  )
                ],
              ))
        ]),
      ),
    ));
  }
}
