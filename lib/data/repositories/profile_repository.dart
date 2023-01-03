import 'package:trivial_pursuit/data/dataSources/remote/user_firebase.dart';
import 'package:trivial_pursuit/data/entities/user.dart';

class ProfileRepository {
  static ProfileRepository? _instance;
  static UserFirebase? _userFirebase;

  ProfileRepository._();

  static ProfileRepository get() {
    _userFirebase ??= UserFirebase.getInstance();
    _instance ??= ProfileRepository._();
    return _instance!;
  }

  Future<User?> getUser(String uid) async {
    return await _userFirebase?.getUser(uid);
  }
}