import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/game/bloc/game_state.dart';

import '../../../data/repositories/profile_repository.dart';

class GameCubit extends Cubit<GameState> {
  final QuestionRepository repository;

  GameCubit({required this.repository}) : super(const Loading());

  void loadQuestions() async {
    try {
      final listQuestions = await repository.getQuestionsOfTheDay();
      emit(Loaded(questions: listQuestions));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  Future<void> endOfFun(int NextQuestionIndex, int maxInd, int score) async {
    if(NextQuestionIndex==maxInd) {
      final uid = await repository.getCurrentUser();
      repository.setUserScore(uid!, score);
      emit(EndGame());
    }
  }
}
