import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/login_repository.dart';
import 'package:trivial_pursuit/ui/pages/login/bloc/login_state.dart';

class LoginCubit extends Cubit<LoginCubit> {
  final LoginRepository repository;

   LoginCubit({required this.repository}) : super(const Initial());


  void singIn(String email, String password) async {
    try {
    await repository.signIn(email, password);
    emit(Correct());
    } catch (e) {

    }
  }

}