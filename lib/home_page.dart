import 'dart:developer';

import 'package:basic/learn_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnPage();
              },
            ),
          );
        },
        child: const Text("Press here"),
      ),
    );
  }
}
