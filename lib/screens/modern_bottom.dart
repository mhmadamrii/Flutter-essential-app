import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ModernBottom extends StatefulWidget {
  const ModernBottom({super.key});

  @override
  State<ModernBottom> createState() => _ModernBottomState();
}

class _ModernBottomState extends State<ModernBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modern Bottom"),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 20,
          ),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(15),
            gap: 10,
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite_outline_outlined,
                text: "likes",
              ),
              GButton(
                icon: Icons.search,
                text: "search",
              ),
              GButton(
                icon: Icons.settings,
                text: "settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
