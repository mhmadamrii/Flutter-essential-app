import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InfoCard extends StatelessWidget {
  // const InfoCard({super.key});

  const InfoCard({
    Key? key,
    required this.name,
    required this.profession,
  }) : super(key: key);

  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
