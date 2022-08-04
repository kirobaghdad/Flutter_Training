import 'package:flutter/material.dart';
import 'log_in.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool show = false;

  // signUp(){
  //    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(

  // )
  // }

  @override
  Widget build(BuildContext context) {
    return (Material(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Image.asset("assets/images/logo.png", height: 70)),
        Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Sign Up Now",
                  style: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "Please fill the details and create account",
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
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Fullname', labelText: 'Fullname')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                    )),
              ],
            )),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
                child: Container(
                    color: Colors.red,
                    width: 300,
                    height: 50,
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )))
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account ?"),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()))
                    },
                    child: const Text(
                      "LogIn",
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
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
                  child: Image.asset("assets/images/facebook.png", height: 70),
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
    ));
  }
}
