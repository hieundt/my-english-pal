import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myenglishpal_web/utils.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (!_auth.currentUser!.emailVerified) {
      //await sendEmailVerification(context);
    } else {}
  }

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> sendEmailVerification(
    BuildContext context,
  ) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(
        context,
        'Email verification sent!',
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(
        context,
        e.message!,
      );
    }
  }
}
