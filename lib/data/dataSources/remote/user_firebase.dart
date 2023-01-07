import 'package:cloud_firestore/cloud_firestore.dart';

import '../../entities/user.dart';

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static UserFirebase? _instance;
  
  static late final CollectionReference<User> _userRef;
  
  UserFirebase._();
  
  static UserFirebase getInstance() {
    if(_instance == null) {
      _userRef = _firebaseFirestore
          .collection('user')
          .withConverter<User>
        (fromFirestore: (snapshot, _) =>
          User.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instance = UserFirebase._();
    }
    return _instance!;
  }

  Future<User?> getUser(String uid) async {
    DocumentSnapshot<User> response = await _userRef.doc(uid).get();
    if(response.exists) {
      return response.data();
    }
    return null;
  }

  Future<QuerySnapshot<User>> getUsers() async {
    QuerySnapshot<User> response = await _userRef.get();
    return response;
  }
}

