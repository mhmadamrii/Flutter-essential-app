import 'package:basic/components/side_menu_tile.dart';
import 'package:flutter/material.dart';

import '../components/info_card.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCard(
                name: "John Doe",
                profession: "Flutter Developer",
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 32,
                  bottom: 16,
                ),
                child: Text(
                  "BROWSE",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ),
              const SideMenuTile(),
            ],
          ),
        ),
      ),
    );
  }
}
