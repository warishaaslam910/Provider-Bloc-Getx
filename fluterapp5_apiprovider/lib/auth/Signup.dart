import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  var signupemailcont = TextEditingController();
  var signuppasscont = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 32),
                )),
                SizedBox(
                  height: 22,
                ),
                TextField(
                  controller: signupemailcont,
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: signuppasscont,
                  decoration: InputDecoration(hintText: "Enter Password"),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                      8,
                      20,
                      8,
                      8,
                    ),
                    child: ElevatedButton(
                        onPressed: () async {
                          try {
                            final credential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: signupemailcont.text,
                              password: signuppasscont.text,
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text('Signup'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
