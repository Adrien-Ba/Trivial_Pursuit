import 'package:flutter/material.dart';
import 'package:trivial_pursuit/ui/pages/home/classement/classement_page.dart';
import 'package:trivial_pursuit/ui/pages/home/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  List<Widget> _content = [
    Text('Accueil'),
    ClassementPage(),
    Profile(),
    //OutlinedButton(onPressed: () {

    //},
    //child: const Text('Je suis un bouton'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: _content[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // LA VAR DOIT ETRE DECLAREE EN DEHORS DU BUILD
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'Jeu'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Classement'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}