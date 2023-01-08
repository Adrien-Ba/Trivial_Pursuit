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
  late String _errorMessage = "";

  String? _redMessage() {
    if (_errorMessage=="") {
      return null;
    }
    return _errorMessage;
  }
  String? _redError() {
    if (_errorMessage=="") {
      return null;
    }
    return "";
  }



  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => LoginRepository.get(),
        child: BlocProvider(
          create: (context) {
            _loginCubit = LoginCubit(
                repository: RepositoryProvider.of<LoginRepository>(context));
            return _loginCubit!..getCurrentUser();
          },
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) => state.maybeMap(
              correct: (value) => context.go("/game"),
              orElse: () => null,
            ),
            builder: (context, state) {
              if (state is Initial) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Trivial Pursuit : Bienvenue'),
                  ),
                  body: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/bg_1.jpg"),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image.asset("assets/images/logo_accueil.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
                          child: Text(
                            "Trivial Pursuit",
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
                          child: TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                              fillColor: Colors.white70,
                              filled: true,
                              errorText: _redError(),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              fillColor: Colors.white70,
                              filled: true,
                              errorText: _redMessage(),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                String value = await _loginCubit!.signIn(
                                    emailController.text,
                                    passwordController.text);
                                setState(() {
                                  if (value != "") {
                                    _errorMessage = value;
                                  }
                                });

                                //.signIn("toto@toto.fr", "totototo");
                                //_loginCubit!.logout();
                              },
                              child: const Text("Se connecter"),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                            ),
                            GestureDetector(
                              child: const Text(
                                "Pour créer un compte, cliquez ICI",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 14),
                              ),
                              onTap: () {
                                context.go("/signUp");
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }

              return Scaffold(
                  appBar: AppBar(
                    title: const Text('Trivial Pursuit : Connexion'),
                  ),
                  body: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/bg_1.jpg"),
                      fit: BoxFit.cover),
                    ),
                    child: SizedBox(
                      width: 10000,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Chargement de vos paramètres personnels", style: TextStyle(fontSize: 19)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Veuillez patienter ...", style: TextStyle(fontSize: 19)),
                        )],
                      ),
                    ),
                  )
              );
            },
          ),
        ));
  }
}
