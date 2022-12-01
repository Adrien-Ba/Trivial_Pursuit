import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/home/game/bloc/game_state.dart';


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

  fetchWord() {}

}