import 'package:flutter/material.dart';

class ChildFoundation extends StatelessWidget {
  const ChildFoundation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text(
            "Aliqua occaecat fugiat minim ea consectetur ullamco laboris cillum. Dolor anim nisi elit culpa irure. Aliquip dolor quis ipsum commodo id qui deserunt in ut Lorem. Minim exercitation ut adipisicing culpa ad sint aliquip. Eiusmod cupidatat commodo consectetur sint. Esse voluptate adipisicing tempor do sint aliquip.",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class Foundation extends StatefulWidget {
  const Foundation({super.key});

  @override
  State<Foundation> createState() => _FoundationState();
}

class _FoundationState extends State<Foundation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foundation",
        ),
      ),
      body: const ChildFoundation(),
    );
  }
}
