import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp4_providerapi/Ui.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  var loginemail = TextEditingController();
  var loginpass = TextEditingController();
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
                Text("LOGIN"),
                TextField(
                  controller: loginemail,
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: loginpass,
                  decoration: InputDecoration(hintText: "Enter Password"),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: loginemail.text,
                                password: loginpass.text)
                            .then((value) => Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Ui())));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
