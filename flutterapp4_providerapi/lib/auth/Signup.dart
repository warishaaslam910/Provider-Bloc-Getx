import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp4_providerapi/Ui.dart';

import 'Authservice.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth = Authservice();
  var signupemail = TextEditingController();
  var signuppass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("SIGNUP"),
                TextField(
                  controller: signupemail,
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: signuppass,
                  decoration: InputDecoration(hintText: "Enter Password"),
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                    onPressed: () {
                      _auth..loginwithgoogle();
                    },
                    child: Text('Sign in with Google')),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                              email: signupemail.text,
                              password: signuppass.text,
                            )
                            .then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Ui()))));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text("Signup"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
