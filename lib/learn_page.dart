import 'dart:developer';

import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learn page",
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            child: const Center(
              child: Text(
                "This is container",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated button'),
          ),
          OutlinedButton(
            onPressed: (() {}),
            child: const Text(
              "Outlined",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Text Button"),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              log("The icon tapped");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department),
                Text("What a beautiful flutter"),
                Icon(Icons.local_fire_department),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
