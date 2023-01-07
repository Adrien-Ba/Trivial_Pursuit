import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/classement_repository.dart';
import 'package:trivial_pursuit/ui/pages/classement/bloc/classement_state.dart';
import 'package:trivial_pursuit/ui/pages/classement/classement_cubit.dart';

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
    return RepositoryProvider(
      create: (context) => ClassementRepository.get(),
      child: BlocProvider(
        create: (context) {
          var cubit = ClassementCubit(
              repository: RepositoryProvider.of<ClassementRepository>(context));
          return cubit!..getUsers();
        },
        child: BlocConsumer<ClassementCubit, ClassementState>(
          listener: (context, state) {},
          builder: (context,state) {
            if(state is Initial) {
              return Text("init");
            }
            if(state is Loaded) {

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
                            if (index % 2 == 0) {
                              return Material(child: ListTile(
                                title: Text(state.listUsers.docs.elementAt(index).data().pseudo),
                                tileColor: Colors.grey[200],));
                            }
                            else {
                              return Material(child: ListTile(
                                title: Text(state.listUsers.docs.elementAt(index).data().pseudo),
                                tileColor: Colors.grey[300],));
                            }
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: state.listUsers.docs.length
                              ) //OBLIGATOIRE POUR AFFICHER UNE LISTE

                  )
                ],
              );
            }
            return Text("error");
          },
        )
      )
    );


  }

  void searchClassement(String query) {
    //TODO
  }
}
