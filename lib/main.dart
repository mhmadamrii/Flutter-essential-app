import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello world, is there anything to share?",
            style: TextStyle(
              fontSize: 11.3,
            ),
          ),
        ),
      ),
    );
  }
}
