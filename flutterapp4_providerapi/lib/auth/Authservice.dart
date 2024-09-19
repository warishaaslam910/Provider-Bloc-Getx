import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
  final _auth = FirebaseAuth.instance;
  Future<UserCredential?> loginwithgoogle() async {
    try {
      final googleuser = await GoogleSignIn().signIn();
      final googleauth = await googleuser?.authentication;
      final cred = GoogleAuthProvider.credential(
          accessToken: googleauth?.accessToken, idToken: googleauth?.idToken);
      return await _auth.signInWithCredential(cred);
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
