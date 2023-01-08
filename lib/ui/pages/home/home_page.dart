import 'package:flutter/material.dart';
import 'package:trivial_pursuit/ui/pages/classement/classement_page.dart';
import 'package:trivial_pursuit/ui/pages/game/game_page.dart';
import 'package:trivial_pursuit/ui/pages/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  List<Widget> _content = [
    GamePage(),
    ClassementPage(),
    Profile(),
    //OutlinedButton(onPressed: () {

    //},
    //child: const Text('Je suis un bouton'))
  ];
//ON peux utiliser des cards & swippingcarddeck
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trivial Pursuit'),
      ),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg_2.jpg"),fit: BoxFit.cover)),
        child: IndexedStack(
          index: _currentIndex,
          children: _content,
        ),
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
