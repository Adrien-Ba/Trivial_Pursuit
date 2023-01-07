import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/profile_repository.dart';

import 'bloc/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repository;

  ProfileCubit({required this.repository}) : super(const Initial());

  void getProfile(String uid) async {
    try {
      final userRep = await repository.getUser(uid);
      if(userRep != null) {
        emit(Loaded(user : userRep));
      } else {
        emit(Disconnected());
      }
    } catch (e) {
      emit(Disconnected());
    }
  }

  void logout() async {
    await repository.logOut();
    emit(Disconnected());
  }
}