import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/classement_repository.dart';
import 'package:trivial_pursuit/ui/pages/classement/bloc/classement_state.dart';

class ClassementCubit extends Cubit<ClassementState> {
  final ClassementRepository repository;

  ClassementCubit({required this.repository}) : super(const Initial());

  void getUsers() async {
    final users = await repository.getUsers();
    if(users !=null) {
      emit(Loaded(listUsers : users));
    } else {
      emit(Error());
    }
  }
}