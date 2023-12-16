import 'package:basic/screens/challenge.dart';
import 'package:basic/screens/homepage.dart';
import 'package:basic/screens/setting.dart';
import 'package:flutter/material.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int currentPage = 0;

  List<Widget> pages = const [
    Homepage(),
    Setting(),
    Challenge(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
          NavigationDestination(
            icon: Icon(Icons.pause_presentation_outlined),
            label: 'challenge',
          )
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
