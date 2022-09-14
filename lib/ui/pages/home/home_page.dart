import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  List<Widget> _content = [
    Text('Accueil'),
    Icon(Icons.account_tree),
    OutlinedButton(onPressed: () {

    },
    child: const Text('Je suis un bouton'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
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
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'menu1'),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined), label: 'menu2'),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm_sharp), label: 'menu3'),
        ],
      ),
    );
  }
}
