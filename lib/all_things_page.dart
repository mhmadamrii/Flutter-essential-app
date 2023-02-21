import 'dart:developer';

import 'package:basic/screens/differ_screen.dart';
import 'package:basic/screens/todo_screen.dart';
import 'package:flutter/material.dart';

class AllThingsChild extends StatefulWidget {
  const AllThingsChild({super.key});

  @override
  State<AllThingsChild> createState() => _AllThingsChildState();
}

class _AllThingsChildState extends State<AllThingsChild> {
  int _counter = 0;

  // increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 10) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("The counter reached 10"),
              content: const Text('Congratulations!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ok"),
                ),
              ],
            );
          },
        );
        _counter = 0;
      }
    });
  }

  // decrement counter
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "data",
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              // backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
              radius: 20.0,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("You have pushed the button many times"),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text(
                "Increment counter",
              ),
            ),
            OutlinedButton(
              onPressed: _decrementCounter,
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
              child: const Text(
                "Decrement counter",
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined),
            label: "TodoApp",
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              log(
                "Hello world",
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const DifferScreen()),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const TodoApp()),
                ),
              );
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class AllThings extends StatelessWidget {
  const AllThings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        actions: [],
      ),
      body: Center(
        child: ElevatedButton(onPressed: (() {}), child: const Text("press")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wrap_text_rounded,
                color: Colors.red,
                size: 50,
                semanticLabel: 'Fuck',
              ),
              label: 'Fuck'),
          BottomNavigationBarItem(
              icon: Icon(Icons.privacy_tip), label: 'Required'),
        ],
      ),
    );
  }
}
