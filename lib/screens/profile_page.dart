import 'package:flutter/material.dart';

const itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      // ignore: avoid_types_as_parameter_names
      itemBuilder: (BuildContext, int index) {
        return ListTile(
          title: Text('item ${(index + 1)}'),
          leading: const Icon(Icons.person_add),
          trailing: const Icon(Icons.self_improvement),
          onTap: () {
            print("Item ${(index + 1)} is selected");
          },
        );
      },
    );
  }
}
