import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/repositories/classement_repository.dart';
import 'package:trivial_pursuit/ui/pages/classement/bloc/classement_state.dart';
import 'package:trivial_pursuit/ui/pages/classement/classement_cubit.dart';

import '../../../data/entities/user.dart';

class ClassementPage extends StatefulWidget {
  const ClassementPage({Key? key}) : super(key: key);

  @override
  State<ClassementPage> createState() => _ClassementPageState();
}

class _ClassementPageState extends State<ClassementPage> {
  final List<User> _searchList = [];
  String _search = "";

  void searchClassement(List<User> listUsers, String value) {
    List<User> tmpList = [];
    if (value != "") {
      _search = value;
      for (var element in listUsers) {
        if (element.pseudo.contains(value)) {
          tmpList.add(element);
        }
      }
      setState(() {
        _searchList.clear();
        _searchList.addAll(tmpList);
      });
    } else {
      _search = value;
      setState(() {
        _searchList.clear();
        _searchList.addAll(listUsers);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => ClassementRepository.get(),
        child: BlocProvider(
            create: (context) {
              var cubit = ClassementCubit(
                  repository:
                      RepositoryProvider.of<ClassementRepository>(context));
              return cubit..getUsers();
            },
            child: BlocConsumer<ClassementCubit, ClassementState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is Initial) {
                  return Text("init");
                }
                if (state is Loaded) {
                  if (_searchList.isEmpty && _search == "") {
                    _searchList.addAll(state.listUsers);
                  }
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Rechercher une personne',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.blue),
                            ),
                          ),
                          onChanged: (value) {
                            searchClassement(state.listUsers, value);
                          },
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  if (index % 2 == 0) {
                                    return Material(
                                        child: ListTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              _searchList.elementAt(index).pseudo),
                                          Text(_searchList
                                              .elementAt(index)
                                              .score
                                              .toString())
                                        ],
                                      ),
                                      tileColor: Colors.grey[200],
                                    ));
                                  } else {
                                    return Material(
                                        child: ListTile(

                                          title: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  _searchList.elementAt(index).pseudo),
                                              Text(_searchList
                                                  .elementAt(index)
                                                  .score
                                                  .toString())
                                            ],
                                          ),
                                          tileColor: Colors.grey[300],
                                          
                                        ));
                                  }
                                },
                                separatorBuilder: (context, index) {
                                  return Divider();
                                },
                                itemCount: _searchList
                                    .length),
                          ) //OBLIGATOIRE POUR AFFICHER UNE LISTE

                          )
                    ],
                  );
                }
                return const Text("Une erreur est survenue");
              },
            )));
  }
}
