import 'dart:developer';

import 'package:basic/all_things_page.dart';
import 'package:basic/dropdown_page.dart';
import 'package:basic/home_page.dart';
import 'package:basic/learn_page.dart';
import 'package:basic/playground_page.dart';
import 'package:basic/screens/fetchdummy_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FetchDummy(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Rootpagee extends StatefulWidget {
  const Rootpagee({super.key});

  @override
  State<Rootpagee> createState() => _RootpageeState();
}

class _RootpageeState extends State<Rootpagee> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      appBar: AppBar(
        title: const Text(
          "Dart",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("Floating actions");
        },
        child: const Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(
            icon: Icon(Icons.play_circle_fill_rounded),
            label: 'Playground',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

class AnotherMain extends StatefulWidget {
  const AnotherMain({super.key});

  @override
  State<AnotherMain> createState() => _AnotherMainState();
}

class _AnotherMainState extends State<AnotherMain> {
  int _counter = 0;
  void sayHello() {
    log("Hello I am here");
    setState(() {
      _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text("Hello world"),
          ElevatedButton(
            onPressed: (() => log("hello fucking buddy")),
            child: const Text("Press here"),
          ),
          FloatingActionButton(onPressed: (() {}))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}

class TryToNavigate extends StatefulWidget {
  const TryToNavigate({super.key});

  @override
  State<TryToNavigate> createState() => _TryToNavigateState();
}

class _TryToNavigateState extends State<TryToNavigate> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: const LearnPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentpage = index;
          });
        },
        selectedIndex: currentpage,
      ),
    );
  }
}
