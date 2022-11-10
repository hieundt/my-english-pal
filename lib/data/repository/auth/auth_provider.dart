import 'package:myenglishpal_web/data/repository/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? get currentUser;

  Future<AuthUser> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> sendEmailVerification();

  Future<AuthUser> createUser({
    required String email,
    required String password,
  });
}
