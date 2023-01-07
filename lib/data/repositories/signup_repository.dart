import 'package:trivial_pursuit/data/dataSources/remote/auth_firebase.dart';

import '../dataSources/remote/user_firebase.dart';
import '../entities/user.dart';

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

  Future<void> signUp(String email, String password) async {
    await _authFirebase?.signUp(email, password);
  }

  Future<String?> getCurrentUser() async {
    return await _authFirebase?.getCurrentUser();
  }

  Future<void> saveUser(String uid, User user) async {
    await _userFirebase?.createUser(uid, user);
  }

}