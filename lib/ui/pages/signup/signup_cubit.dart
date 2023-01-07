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

    User user = User(pseudo: pseudo, age: int.parse(age), score: 0);

    await repository.saveUser(uid.toString(), user);

    emit(Valid());
  }


}