import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit/ui/pages/home/game/bloc/question_state_v2.dart';
import 'package:trivial_pursuit/ui/pages/home/game/game_cubit.dart';

class GamePage extends StatefulWidget {

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {

    child: BlocConsumer<GameCubit,QuestionState> (
        listener: (context, state) {},
        builder: (context, state) {
          if(state is Loaded) {
            SwipingCardDeck(
              cardDeck: _questions.map((e) {
                return Card(
                    shape: const RoundedRectangleBorder()(
                        borderRadius:
                    )
                );
              }),
            );
          }
        }
    );
  }


}