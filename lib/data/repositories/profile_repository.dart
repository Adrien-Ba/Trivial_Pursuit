import 'package:trivial_pursuit/data/dataSources/remote/user_firebase.dart';
import 'package:trivial_pursuit/data/entities/user.dart';

import '../dataSources/remote/auth_firebase.dart';

class ProfileRepository {
  static ProfileRepository? _instance;
  static UserFirebase? _userFirebase;
  static AuthFirebase? _authFirebase;

  ProfileRepository._();

  static ProfileRepository get() {
    _userFirebase ??= UserFirebase.getInstance();
    _authFirebase ??= AuthFirebase.getInstance();
    _instance ??= ProfileRepository._();

    return _instance!;
  }

  Future<User?> getUser(String uid) async {
    return await _userFirebase?.getUser(uid);
  }

  Future<String?> logOut() async {
    await _authFirebase!.logOut();
  }

  Future<String?> getCurrentUser() async {
    return await _authFirebase?.getCurrentUser();
  }



}