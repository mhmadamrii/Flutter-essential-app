import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                "Instagram",
                style: TextStyle(
                  fontFamily: 'Grandista',
                  fontSize: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                ),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "images/heart.png",
                  width: 24,
                  height: 24,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "images/messenger.png",
                  width: 24,
                  height: 24,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "images/more.png",
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
