// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Padding(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Container(
          child: Column(
            children: [
              // name and notif section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hi John Doe!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    iconSize: 40.0,
                    icon: const Icon(
                      Icons.notifications_active,
                    ),
                  )
                ],
              ),

              Container(
                width: double.infinity,
                child: Text(
                  "23 Jan, 2022",
                  style: TextStyle(
                    color: Colors.blue[100],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              // new search field
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[600],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search here",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // emotion icons
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "profile"
          ),
        ],
      ),
    );
  }
}
