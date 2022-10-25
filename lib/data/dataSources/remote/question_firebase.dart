import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/entities/question.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static late final CollectionReference<Question> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if(_instance == null) {
      _questionRef = _firebaseFirestore
          .collection('question')
          .withConverter<Question>(
          fromFirestore: (snapshot, _) =>
              Question.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestions(Question questions) async {
    await _questionRef.add(questions);
    return;
  }

  Future<Question> get() async {
    QuerySnapshot<Question> test = await _questionRef.get();
    return test.docs.first.data();
  }

  Future<void> delete(String id) async {
    return _questionRef.doc(id).delete();
  }

}
