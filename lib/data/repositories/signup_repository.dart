import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit/data/dataSources/remote/auth_firebase.dart';
import 'package:trivial_pursuit/data/entities/user.dart' as user;

import '../dataSources/remote/user_firebase.dart';

class SignUpRepository {
  static SignUpRepository? _instance;
  static AuthFirebase? _authFirebase;
  static UserFirebase? _userFirebase;

  SignUpRepository._();

  static SignUpRepository get() {
    _authFirebase ??= AuthFirebase.getInstance();
    _userFirebase ??= UserFirebase.getInstance();
    _instance ??= SignUpRepository._();

    return _instance!;
  }

  Future<String?> signUp(String email, String password) async {
    try {
      await _authFirebase!.signUp(email, password);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> getCurrentUser() async {
    return await _authFirebase?.getCurrentUser();
  }

  Future<void> saveUser(String uid, user.User user) async {
    await _userFirebase?.createUser(uid, user);
  }

}