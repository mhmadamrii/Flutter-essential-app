import 'package:basic/screens/homepage.dart';
import 'package:basic/screens/profile.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int _currentPage = 0;
  List<Widget> pages = [
    const Homepage(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        selectedIndex: _currentPage,
        onDestinationSelected: (int value) {
          setState(() {
            _currentPage = value;
          });
        },
      ),
    );
  }
}
