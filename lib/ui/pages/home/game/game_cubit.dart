import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/home/game/bloc/question_state_v2.dart';


class GameCubit extends Cubit<QuestionState> {
  final QuestionRepository repository;

  late Question _lastQuestion;

  int _score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository}) : super(Loading());

  setAnswer(String answer) {
    selectedAnswer = answer;
    emit(AnswerSelected(answer));
  }

  onCardSwiped(Question question) {...}

  Future<void> fetchWord() async {
    emit(Loading());
  }
}