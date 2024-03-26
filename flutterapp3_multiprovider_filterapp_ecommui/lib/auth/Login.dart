import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/auth/Account_auth.dart';

import 'package:flutterapp3_multiprovider_filterapp_ecommui/pages/Mode.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _handleGoogleClickbtn() {
    signInWithGoogle().then((user) async {
      // ignore: unnecessary_null_comparison
      if (user != null) {
        print('\nUser: ${user.user}');
        print('\nUser: ${user.additionalUserInfo}');

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Account_auth()));
      }
    });
  }

  Future<UserCredential?> signInWithGoogle() async {
    await InternetAddress.lookup('google.com');
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      //body
      body: Stack(children: [
        //app logo
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF4C53A5),
                Color.fromARGB(255, 199, 202, 241),
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "e-commerce.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ))
              ],
            ),
          ),
        ),
        //google login button
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 255, 187),
                    shape: const StadiumBorder(),
                    elevation: 1),
                onPressed: () {
                  _handleGoogleClickbtn();
                },

                //google icon
                icon: Image.asset('assets/images/google.png',
                    height: mq.height * .03),

                //login with google label
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(text: 'Login with '),
                        TextSpan(
                            text: 'Google',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ]),
                ))),
      ]),
    );
  }
}
