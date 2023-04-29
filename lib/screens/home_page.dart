import 'package:basic/custom-widget/stories.dart';
import 'package:flutter/material.dart';
import 'package:basic/custom-widget/appbar_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'Instagram',
      ),
      body: ListView(
        children: [
          Stories(),
        ],
      ),
    );
  }
}
