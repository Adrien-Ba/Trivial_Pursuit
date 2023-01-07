import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:trivial_pursuit/data/repositories/login_repository.dart';
import 'package:trivial_pursuit/data/repositories/question_repository.dart';
import 'package:trivial_pursuit/ui/pages/game/bloc/game_state.dart';
import 'package:trivial_pursuit/ui/pages/game/game_cubit.dart';

import '../../../data/entities/list_questions.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}



List<String> shuffleAnswers(Question currentQuestion) {
  return [currentQuestion.correct_answer, ...currentQuestion.incorrect_answers]
      .toList()
    ..shuffle();
}

class _GamePageState extends State<GamePage> {
  int _currentIndex = 0;
  int _score = 0;
  List<String> _currentResponse = [];
  List<Question> _questions = [];
  SwipingDeck? _swipingDeck;
  late GameCubit _gameCubit;

  void isCorrectAnswer(String answer, GameCubit gameCubit) {
    setState(() {
      if (answer == _questions[_currentIndex].correct_answer) {
        switch(_questions[_currentIndex].difficulty) {
          case "hard": {
            _score += 3;
          }
          break;
          case "medium": {
            _score += 2;
          }
          break;
          default: {
            _score += 1;
          }
          break;
        }
      }
      _currentIndex += 1;
      gameCubit.endOfFun(_currentIndex, 20,_score);
    });
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => QuestionRepository.get(),
        child: BlocProvider(
            create: (context) {
              _gameCubit = GameCubit(
                  repository:
                      RepositoryProvider.of<QuestionRepository>(context));
              return _gameCubit!..loadQuestions();
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
                    return ListView(children: [
                      Column(
                        children: [
                          _swipingDeck!,
                          Column(
                            children:
                                shuffleAnswers(_questions[_currentIndex]).map(
                              (e) {
                                return ElevatedButton(
                                    onPressed: () {
                                      isCorrectAnswer(e,_gameCubit);
                                      _swipingDeck!.swipeRight();
                                    },
                                    child: Text(e));
                              },
                            ).toList(),
                          ),
                          Text("Score :"+_score.toString()),
                        ],
                      ),
                    ]);
                  }
                  if(state is EndGame) {
                    return Text("Vous n'avez plus de question pour aujourd'hui avec un score de : "+_score.toString());
                  }
                  return const Text("Henri");
                })));
  }

  //Pour appeler le router :

  void createQuestion(Question question) {
    _currentResponse = [...question.incorrect_answers!, question.correct_answer!]
      ..shuffle()
      ..toList();
  }
}
