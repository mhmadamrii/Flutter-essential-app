// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FetchDummy extends StatelessWidget {
  const FetchDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fetch dummy",
        ),
      ),
      body: const ChildFetchDummy(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.hourglass_empty_sharp,
        ),
      ),
    );
  }
}

class ChildFetchDummy extends StatefulWidget {
  const ChildFetchDummy({super.key});

  @override
  State<ChildFetchDummy> createState() => _ChildFetchDummyState();
}

class _ChildFetchDummyState extends State<ChildFetchDummy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Hello world",
        ),
      ),
    );
  }
}
