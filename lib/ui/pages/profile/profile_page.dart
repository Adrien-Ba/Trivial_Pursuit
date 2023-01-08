import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/repositories/profile_repository.dart';
import 'package:trivial_pursuit/ui/pages/profile/bloc/profile_state.dart';
import 'package:trivial_pursuit/ui/pages/profile/profile_cubit.dart';
import 'package:trivial_pursuit/data/entities/user.dart' as profileUser;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileCubit? _profileCubit;
  late profileUser.User _user;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProfileRepository.get(),
      child: BlocProvider(
          create: (context) {
            _profileCubit = ProfileCubit(
                repository: RepositoryProvider.of<ProfileRepository>(context));
            return _profileCubit!..getProfile();
          },
          child: BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) => state.maybeMap(
              disconnected: (value) => context.go("/"),
              orElse: () => null,
            ),
            builder: (context, state) {
              if (state is Initial) {
                const Text(
                    "testeeee"); //TODO inutile, le state ne peux pas être initial car si deconencte , redirect vers login
              }
              if (state is Loaded) {
                _user = state.user;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: ProfilePicture(
                          name: _user.pseudo, radius: 50, fontsize: 35),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_user.pseudo,
                          style: const TextStyle(fontSize: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Mon score : ${_user.score} points',
                              style: const TextStyle(fontSize: 20))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Mon age : ${_user.age} ans',
                              style: const TextStyle(fontSize: 20))),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            _profileCubit!.logout();
                          },
                          child: const Text('Déconnexion'),
                        ),
                      ),
                    )
                  ],
                );
              }
              ;
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg_2.jpg"),
                      fit: BoxFit.cover),
                ),
                child: SizedBox(
                  width: 10000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Redirection en cours",
                            style: TextStyle(fontSize: 19)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Veuillez patienter ...",
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
