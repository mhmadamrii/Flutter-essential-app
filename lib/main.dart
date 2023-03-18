import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Whatever(),
    );
  }
}

class Whatever extends StatefulWidget {
  const Whatever({super.key});

  @override
  State<Whatever> createState() => _WhateverState();
}

class _WhateverState extends State<Whatever> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Here we go",
        ),
      )),
    );
  }
}
