import 'package:flutter/material.dart';

import 'cart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Rootpage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/cart': (context) => const Cart(),
      },
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int _currentScreen = 0;

  final List<Widget> _screen = [
    const Home(),
    const Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Appbar",
        ),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.shopping_basket,
            ),
          )
        ],
      ),
      body: _screen[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (int newScreen) {
          setState(() {
            print("current screen ${_currentScreen}");
            _currentScreen = newScreen;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Person",
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20,
      ),
      child: Center(
        child: Column(
          children: [
            const Text(
              'Current Count: ',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "$_count",
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            if (_count > 0)
              const Text(
                "You're doing great",
              ),
            if (_count < 0)
              const Text(
                'Be careful!',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ElevatedButton(
              onPressed: _increment,
              child: const Text(
                "Increment",
              ),
            ),
            OutlinedButton(
              onPressed: _decrement,
              child: const Text(
                "Decrement",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
