// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final double height;

  const MyAppBar({required this.title, this.height = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Container(
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      title,
                      style: GoogleFonts.dancingScript(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print("Hello world");
                    },
                    color: Colors.black,
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Hello world");
                    },
                    icon: const Icon(
                      Icons.messenger_outline_rounded,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Hello world");
                    },
                    icon: const Icon(
                      Icons.add_box_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
