import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myenglishpal_web/utils.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth;
  // = FirebaseAuth.instance;
  // User? get currentUser => _auth.currentUser;
  // Stream<User?> get authStateChanges => _auth.authStateChanges();

  FirebaseAuthServices(this._auth);

  //* Google Sign In function
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(
        context,
        e.message!,
      );
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
