import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';

class AuthService {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  Future<void> googleSignin() async {
    try {
      const LoadingDialog();
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) return;

      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } on FirebaseAuthException catch (_) {
      // handle error
    }
  }

  Future<void> signOut() async {
    const LoadingDialog();
    await FirebaseAuth.instance.signOut();
  }
}
