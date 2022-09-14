import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/0287/6738/7780/products/PORTRAIT-OLLOW-BLEU.png?v=1597638270'),
                    fit: BoxFit.fill)),
          ),
        ),
        const Divider(),
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Adrien Bassail', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Mon score : 4269 points',
                  style: TextStyle(fontSize: 20))),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Déconnexion'),
            ),
          ),
        )
      ],
    );
  }
}
