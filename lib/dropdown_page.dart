import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: const MainDropDown(),
      backgroundColor: Colors.white,
    );
  }
}

class MainDropDown extends StatefulWidget {
  const MainDropDown({super.key});

  @override
  State<MainDropDown> createState() => _MainDropDownState();
}

class _MainDropDownState extends State<MainDropDown> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Hello world"),
    );
  }
}
