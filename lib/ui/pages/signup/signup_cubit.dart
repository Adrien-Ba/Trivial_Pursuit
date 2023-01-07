import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/signup_repository.dart';
import 'package:trivial_pursuit/ui/pages/signup/bloc/signup_state.dart';

import '../../../data/entities/user.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepository repository;

  SignUpCubit({required this.repository}) : super(const Display());

  void signUp(String email, String password) async {
    await repository.signUp(email, password);
  }

  void init() async {
    emit(Display());
  }

  void createAccount(String email, String password, String passwordBis, String pseudo, String age) async {

    await repository.signUp(email, password);

    final uid = await repository.getCurrentUser();

    DateTime date = DateTime.now();
    String dateString = '${date.year}-${date.month}-${date.day-1}';

    User user = User(pseudo: pseudo, age: int.parse(age), score: 0, date: dateString);

    await repository.saveUser(uid.toString(), user);

    emit(Valid());
  }


}