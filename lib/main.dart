import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // make controller here
  final _textController = TextEditingController();

  // store user inpput
  String userInput = '';
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display text
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                ),
                child: Text(
                  userInput,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Placeholder",
                labelText: "Input here",
                suffixIcon: IconButton(
                  onPressed: (() {
                    _textController.clear();
                  }),
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  userInput = _textController.text;
                });
              }),
              child: const Text(
                "Press here",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
