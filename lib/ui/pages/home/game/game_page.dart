import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
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
    return RepositoryProvider(
        create: (context) => QuestionRepository.get(),
        child: BlocProvider(
            create: (context) {
              var cubit = GameCubit(
                  repository:
                      RepositoryProvider.of<QuestionRepository>(context));
              return cubit!..loadQuestions();
            },
            child: BlocConsumer<GameCubit, GameState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is Loaded) {
                    SwipingCardDeck(
                      cardDeck: _questions.map((e) {
                        return const Card(
                          child: Text("aa"),
                        );
                      }).toList(),
                      onLeftSwipe: (Card) {},
                      onRightSwipe: (Card) {},
                      onDeckEmpty: () {
                        debugPrint('Card empty');
                      },
                      cardWidth: 50,
                    );
                  }
                  return const Text("Henri");
                })));
  }

  void createQuestion(Question question) {
    _currentResponse = [...question.incorrectAnswers!, question.correctAnswer!]
      ..shuffle()
      ..toList();
  }
}
