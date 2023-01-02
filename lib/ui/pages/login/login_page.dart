import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();

void dispose() {
  emailController.dispose();
  dispose();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Se connecter"),
          )
        ],
      ),
    );
  }
}
