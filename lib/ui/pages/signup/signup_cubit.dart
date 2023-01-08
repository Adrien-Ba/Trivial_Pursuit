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

  Future<String> createAccount(String email, String password, String passwordBis, String pseudo, String age) async {
    if(pseudo == "") {
      return "Veuillez renseigner un pseudo";
    }
    if(age == "") {
      return "Veuillez renseigner votre age";
    }
    if(int.parse(age)<18) {
      return "Vous devez être majeur et vacciné pour vous inscrire";
    }
    if(int.parse(age)>90) {
      return "Vous êtes bien trop vieux pour jouer a notre jeu";
    }
    if(password != passwordBis) {
      return "Les mots de passe doivent correspondre";
    }

    final response = await repository.signUp(email, password);
    if(response==null) {
      final uid = await repository.getCurrentUser();

      DateTime date = DateTime.now();
      String dateString = '${date.year}-${date.month}-${date.day-1}';

      User user = User(pseudo: pseudo, age: int.parse(age), score: 0, date: dateString);

      await repository.saveUser(uid.toString(), user);

      emit(Valid());
      return "";
    } else {
      if(response == "unknown") {
        return "Veuillez renseigner tous les champs";
      }
      if(response == "weak-password") {
        return "Le mot de passe doit contenir 6 caractères" ;
      }
      if(response == "email-already-in-use") {
        return "Cet utilisateur exisite déjà" ;
      }
      if(response == "invalid-email") {
        return "L'email renseigné n'existe pas";
      }
      return response;
    }

  }


}