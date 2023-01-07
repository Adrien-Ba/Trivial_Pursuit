import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/repositories/signup_repository.dart';
import 'package:trivial_pursuit/ui/pages/signup/bloc/signup_state.dart';
import 'package:trivial_pursuit/ui/pages/signup/signup_cubit.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final repeatPasswordController = TextEditingController();
final pseudoController = TextEditingController();
final ageController = TextEditingController();

void dispose() {
  emailController.dispose();
  passwordController.dispose();
  repeatPasswordController.dispose();
  pseudoController.dispose();
  ageController.dispose();
  dispose();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpCubit? _signUpCubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RepositoryProvider(
        create: (context) => SignUpRepository.get(),
        child: BlocProvider(
          create: (context) {
            _signUpCubit = SignUpCubit(
                repository: RepositoryProvider.of<SignUpRepository>(context));
            return _signUpCubit!..init();
          },
          child: BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) => state.maybeMap(
              valid: (value) => context.go("/game"),
              orElse: () => null,
            ),
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Inscription'),
                ),
                body: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    TextField(
                      controller: repeatPasswordController,
                      decoration: const InputDecoration(
                        labelText: "Repeat password",
                      ),
                    ),
                    TextField(
                      controller: pseudoController,
                      decoration: const InputDecoration(
                        labelText: "Pseudo",
                      ),
                    ),
                    TextField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Age",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _signUpCubit?.createAccount(
                                  emailController.text,
                                  passwordController.text,
                                  repeatPasswordController.text,
                                  pseudoController.text,
                                  ageController.text);
                            },
                            child: const Text("Créer mon compte"))
                      ],
                    )
                  ],
                ),
              );
              return const Text("CHARHEUUUU");
            },
          ),
        ));
  }
}
