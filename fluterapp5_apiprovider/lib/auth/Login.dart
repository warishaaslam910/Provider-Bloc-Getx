import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluterapp5_apiprovider/Ui.dart';
import 'package:fluterapp5_apiprovider/auth/Googlelogin.dart';
import 'package:fluterapp5_apiprovider/auth/Signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleAuth = Googlelogin();
  var loginemailcont = TextEditingController();
  var loginpasscont = TextEditingController();
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
                  "Login",
                  style: TextStyle(fontSize: 32),
                )),
                SizedBox(
                  height: 22,
                ),
                TextField(
                  controller: loginemailcont,
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: loginpasscont,
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
                                .signInWithEmailAndPassword(
                                    email: loginemailcont.text,
                                    password: loginpasscont.text)
                                .then((value) => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) => Ui())))
                                    });
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                        },
                        child: Text('Login'))),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                      8,
                      12,
                      8,
                      8,
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          GoogleAuth.googlesignup(context);
                        },
                        child: Text('Signin with Google'))),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                      8,
                      20,
                      8,
                      8,
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        children: [
                          Text('Create an account '),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
