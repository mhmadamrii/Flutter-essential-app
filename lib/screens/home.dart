import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          image: const DecorationImage(
            image: AssetImage(
              "images/einstein.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Text("Hello world"),
      ),
    );
  }
}
