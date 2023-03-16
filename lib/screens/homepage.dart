import 'package:basic/screens/learn_flutter.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const LearnFlutter();
                },
              ),
            );
          },
          child: const Text("Press here"),
        ),
      ),
    );
  }
}
