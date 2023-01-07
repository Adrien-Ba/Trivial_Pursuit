import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static AuthFirebase? _instance;
  static FirebaseAuth? _authInstance;


  AuthFirebase._();

  static AuthFirebase getInstance() {
    if(_instance == null) {
      _instance = AuthFirebase._();
      _authInstance = FirebaseAuth.instance;

    }
    return _instance!;
  }

  Future<void> signUp(String email, String password) async {
    await _authInstance!.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signIn(String email, String password) async {
    await _authInstance!.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> logOut() async {
    await _authInstance!.signOut();
  }

  Future<String?> getCurrentUser() async {
    await _authInstance!.currentUser?.reload();
    return _authInstance!.currentUser?.uid;

}



}