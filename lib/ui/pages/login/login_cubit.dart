import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/login_repository.dart';
import 'package:trivial_pursuit/ui/pages/login/bloc/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;

  LoginCubit({required this.repository}) : super(const Initial());

  void signIn(String email, String password) async {
    final response = await repository.signIn(email, password);
    if (response == null) {
      emit(Correct());
    } else {
      emit(Incorrect());
    }
  }

  void getCurrentUser() async {
    final response = await repository.getCurrentUser();
    if(response != null) {
      emit(Correct());
    } else {
      emit(Initial());
    }
  }

  void logout() async {
    await repository.logOut();
  }

}
