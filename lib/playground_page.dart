import 'dart:developer';

import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello world",
        ),
      ),
      body: const ChildPlayground(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: (() {
                log("Hello world");
                _incrementCount();
              }),
              child: const Icon(Icons.add),
            ),
            Text(
              "$_count",
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            FloatingActionButton(
              onPressed: _decrementCount,
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}

class ChildPlayground extends StatelessWidget {
  const ChildPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            "Hello world",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
