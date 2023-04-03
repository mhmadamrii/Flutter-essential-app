// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // variables
  int _count = 0;
  bool isDarkMode = false;

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }


  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  void _resetCount() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            onPressed: toggleDarkMode,
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
        ],
        title: const Text("fkkda;jfow"),
      ),
      backgroundColor: isDarkMode ? Colors.blueGrey : Colors.grey,
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Text(
                "Hello world",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: _increment,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Icon(Icons.add)),
                    ElevatedButton(
                      onPressed: _decrement,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Icon(Icons.play_lesson),
                    ),
                    ElevatedButton(
                      onPressed: _resetCount,
                      child: const Icon(Icons.reset_tv),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: const Center(
                child: Text(
                  "the chages",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                '$_count',
                style: const TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
