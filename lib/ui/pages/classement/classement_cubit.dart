import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/classement_repository.dart';
import 'package:trivial_pursuit/ui/pages/classement/bloc/classement_state.dart';

import '../../../data/entities/user.dart';

class ClassementCubit extends Cubit<ClassementState> {
  final ClassementRepository repository;

  ClassementCubit({required this.repository}) : super(const Initial());

  void getUsers() async {
    final users = await repository.getUsers();
    if(users !=null) {
      List<User> listUsers = [];
      //List<User> searchList = [];
      for (var element in users.docs) {
        listUsers.add(element.data());
      }
      listUsers.sort((a, b) => b.score.compareTo(a.score));
      emit(Loaded(listUsers : listUsers));
    } else {
      emit(Error());
    }
  }
}