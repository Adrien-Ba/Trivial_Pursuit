import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/dataSources/remote/user_firebase.dart';
import 'package:trivial_pursuit/data/entities/user.dart';

class ClassementRepository {
  static ClassementRepository? _instance;
  static UserFirebase? _userFirebase;

  ClassementRepository._();

  static ClassementRepository get() {
    _userFirebase ??= UserFirebase.getInstance();
    _instance ??= ClassementRepository._();
    return _instance!;
  }

  Future<QuerySnapshot<User>?> getUsers() async {
    return await _userFirebase?.getUsers();
  }
}