import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluterapp5_apiprovider/Ui.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Googlelogin {
  final _auth = FirebaseAuth.instance;
  Future<UserCredential?> googlesignup(BuildContext context) async {
    try {
      final googleuser = await GoogleSignIn().signIn();
      final googleauth = await googleuser?.authentication;
      final cred = GoogleAuthProvider.credential(
        idToken: googleauth?.idToken,
        accessToken: googleauth?.accessToken,
      );
      final Usercred = _auth.signInWithCredential(cred);

      if (Usercred != null) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Ui()));
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
