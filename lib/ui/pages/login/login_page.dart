import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/repositories/login_repository.dart';
import 'package:trivial_pursuit/ui/pages/login/login_cubit.dart';

import 'bloc/login_state.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

void dispose() {
  emailController.dispose();
  passwordController.dispose();
  dispose();
}

void Login() {}

class _LoginPageState extends State<LoginPage> {
  LoginCubit? _loginCubit;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => LoginRepository.get(),
        child: BlocProvider(
          create: (context) {
            _loginCubit = LoginCubit(
                repository: RepositoryProvider.of<LoginRepository>(context));
            return _loginCubit!;
          },
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) => state.maybeMap(
              correct: (value) => context.go("/game"),
              orElse: () => null,
            ),
            builder: (context, state) {
              if (state is Initial) {
                return Scaffold(
                  body: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _loginCubit!
                              //.signIn(emailController.text, passwordController.text);
                          .signIn("toto@toto.fr", "totototo");
                          //_loginCubit!.logout();
                        },
                        child: Text("Se connecter"),
                      )
                    ],
                  ),
                );
              }
              return const Text("Chargement");
            },
          ),
        ));
  }
}
