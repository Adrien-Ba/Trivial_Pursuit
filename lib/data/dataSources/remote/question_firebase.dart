import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static late final CollectionReference<ListQuestions> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if(_instance == null) {
      _questionRef = _firebaseFirestore
          .collection('questionOfTheDay')
          .withConverter<ListQuestions>(
          fromFirestore: (snapshot, _) =>
              ListQuestions.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestions(ListQuestions questions) async {

    await _questionRef.doc(_getDate()).set(questions);
  }

  Future<ListQuestions?> get() async {
    DocumentSnapshot<ListQuestions> response = await _questionRef.doc(_getDate()).get();
    if(response.exists) {
      return response.data();
    }
    return null;
  }

  Future<void> delete(String id) async {
    return _questionRef.doc(id).delete();
  }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.year}-${today.month}-${today.day}';
  }

}
