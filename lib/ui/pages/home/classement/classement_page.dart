import 'package:flutter/material.dart';

class ClassementPage extends StatefulWidget {
  const ClassementPage({Key? key}) : super(key: key);

  @override
  State<ClassementPage> createState() => _ClassementPageState();
}

class _ClassementPageState extends State<ClassementPage> {
  final List<String> _liste =
      List<String>.generate(20, (index) => 'Tristan est beau $index');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Rechercher une personne',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue),
            ),
          ),
          onChanged: searchClassement,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  if(index%2==0) {
                    return ListTile(title: Text(_liste[index]), tileColor: Colors.grey[200],);
                  }
                  else {
                    return ListTile(title: Text(_liste[index]), tileColor: Colors.grey[300],);
                  }
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: _liste.length) //OBLIGATOIRE POUR AFFICHER UNE LISTE

            )
      ],
    );


  }

  void searchClassement(String query) {
    //TODO
  }
}
