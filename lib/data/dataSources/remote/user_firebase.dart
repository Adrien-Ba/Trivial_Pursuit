import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import '../../entities/user.dart';

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static UserFirebase? _instance;
  
  static late final CollectionReference<User> _userRef;
  
  UserFirebase._();
  
  static UserFirebase getInstance() {
    if(_instance == null) {
      _userRef = _firebaseFirestore
          .collection('users')
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

  Future<void> createUser(String uid, User user) async {
    await _userRef.doc(uid).set(user);
  }

  Future<void> setUserScore(String uid, int score) async {
    DocumentSnapshot<User> user = await _userRef.doc(uid).get();
    DateTime date = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    String dateString =  formatter.format(date);
    if(user.data()!.date!=dateString) {
      await _userRef.doc(uid).update({"score": score + user.data()!.score, "date": dateString});
    }
  }

  Future<QuerySnapshot<User>> getUsers() async {
    QuerySnapshot<User> response = await _userRef.get();
    return response;
  }
}

