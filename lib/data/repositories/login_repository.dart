import 'package:firebase_auth/firebase_auth.dart';

import '../dataSources/remote/auth_firebase.dart';

class LoginRepository {
  static LoginRepository? _instance;
  static AuthFirebase? _authFirebase;

  LoginRepository._();

  static LoginRepository get() {
    _authFirebase ??= AuthFirebase.getInstance();
    _instance ??= LoginRepository._();
    return _instance!;
  }


  Future<String?> signUp(String email, String password) async {
    try {
      await _authFirebase!.signUp(email, password);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signIn(String email, String password) async {
    try {
      await _authFirebase!.signIn(email, password);
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  Future<String?> logOut() async {
    try {
      await _authFirebase!.logOut();
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> getCurrentUser() async {
    return await _authFirebase!.getCurrentUser();
  }
}