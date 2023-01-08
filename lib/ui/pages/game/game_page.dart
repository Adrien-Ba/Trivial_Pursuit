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
        switch (_questions[_currentIndex].difficulty) {
          case "hard":
            {
              _score += 3;
            }
            break;
          case "medium":
            {
              _score += 2;
            }
            break;
          default:
            {
              _score += 1;
            }
            break;
        }
      }
      if(_currentIndex == 9) {
        gameCubit.endOfFun(_currentIndex+1, 10, _score);
      } else {
        _currentIndex += 1;
      }
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            child: SizedBox(
                              width: 300,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    e.question,
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ));
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
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Questions du jour : ",
                                style: TextStyle(fontSize: 30)),
                          ),
                          IgnorePointer(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 0.0, 16.0, 16.0),
                            child: Container(child: _swipingDeck!),
                          )),
                          Column(
                            children:
                                shuffleAnswers(_questions[_currentIndex]).map(
                              (e) {
                                return ElevatedButton(
                                    onPressed: () {
                                      isCorrectAnswer(e, _gameCubit);
                                      _swipingDeck!.swipeRight();
                                    },
                                    child: Text(e));
                              },
                            ).toList(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text("Score du jour : $_score",
                                style: const TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                    ]);
                  }
                  if (state is EndGame) {
                    return SizedBox(
                      width: 10000,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child:
                                Image.asset("assets/images/logo_accueil.png"),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 8.0),
                            child: Text(
                              "Merci d'avoir joué !",
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Vous avez gagné : $_score points aujourd'hui.",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Revenez demain pour jouer a nouveau.",
                                style: TextStyle(fontSize: 18)),
                          )
                        ],
                      ),
                    );
                  }
                  if (state is AlreadyPlayed) {
                    return SizedBox(
                      width: 10000,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child:
                                Image.asset("assets/images/logo_accueil.png"),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 8.0),
                            child: Text(
                              "Merci d'avoir joué !",
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                          Divider(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Vous avez déjà joué aujourd'hui.",
                                style: TextStyle(fontSize: 18)),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Revenez demain pour jouer a nouveau.",
                                style: TextStyle(fontSize: 18)),
                          )
                        ],
                      ),
                    );
                  }
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/bg_2.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: SizedBox(
                      width: 10000,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Récupération des questions du jour", style: TextStyle(fontSize: 19)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Veuillez patienter ...", style: TextStyle(fontSize: 19)),
                          )],
                      ),
                    ),
                  );
                })));
  }

  //Pour appeler le router :

  void createQuestion(Question question) {
    _currentResponse = [
      ...question.incorrect_answers!,
      question.correct_answer!
    ]
      ..shuffle()
      ..toList();
  }
}
