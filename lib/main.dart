import 'package:basic/widgets/MyAppbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const Homepage()
      // },
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Image.asset(
        "images/home.png",
        width: 24,
        height: 24,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "images/search.png",
        width: 24,
        height: 24,
      ),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "images/video-player.png",
        width: 24,
        height: 24,
      ),
      label: "Reels",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "images/bag.png",
        width: 24,
        height: 24,
      ),
      label: "Advertisement",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
        color: Colors.black,
      ),
      label: "Profile",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 5,
          right: 5,
        ),
        child: Column(
          children: const [
            MyAppbar(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        elevation: 0,
        backgroundColor: Colors.white,
        items: bottomNavItems,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
