import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/home/game/bloc/game_state.dart';
import 'package:trivial_pursuit/ui/pages/home/game/game_cubit.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int _currentIndex = 0;
  List<String> _currentResponse = [];
  List<Question> _questions = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameCubit, GameState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is Loaded) {
          return const Text("Henri");
        }
        return const Text("chargment");
      },
    );
  }

  void createQuestion(Question question) {
    _currentResponse = [...question.incorrectAnswers!, question.correctAnswer!]
      ..shuffle()
      ..toList();
  }
}

