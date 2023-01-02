import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/game/bloc/game_state.dart';
import 'package:trivial_pursuit/ui/pages/game/game_cubit.dart';

import '../../../data/entities/list_questions.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

SwipingDeck? _swipingDeck;

List<String> shuffleAnswers(Question currentQuestion) {
  return [currentQuestion.correctAnswer, ...currentQuestion.incorrectAnswers]
      .toList()
    ..shuffle();
}

class _GamePageState extends State<GamePage> {
  int _currentIndex = 0;
  int _score = 0;
  List<String> _currentResponse = [];
  List<Question> _questions = [];

  void isCorrectAnswer(String answer) {
    setState(() {
      if (answer == _questions[_currentIndex].correctAnswer) {
        _score += 1;
      }
      _currentIndex += 1;
    });
  }

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
                    _questions = state.questions.results;
                    _swipingDeck ??= SwipingCardDeck(
                      cardDeck: _questions.map((e) {
                        return Card(
                          child: Text(e.question),
                        );
                      }).toList(),
                      onLeftSwipe: (Card) {},
                      onRightSwipe: (Card) {},
                      onDeckEmpty: () {
                        debugPrint('Card empty');
                      },
                      cardWidth: 50,
                    );
                    return Column(
                      children: [
                        _swipingDeck!,
                        Column(
                          children:
                              shuffleAnswers(_questions[_currentIndex]).map(
                            (e) {
                              return ElevatedButton(
                                  onPressed: () {
                                    isCorrectAnswer(e);
                                    _swipingDeck!.swipeRight();
                                  },
                                  child: Text(e));
                            },
                          ).toList(),
                        )
                      ],
                    );
                  }
                  return const Text("Henri");
                })));
  }

  //Pour appeler le router :

  void createQuestion(Question question) {
    _currentResponse = [...question.incorrectAnswers!, question.correctAnswer!]
      ..shuffle()
      ..toList();
  }
}
