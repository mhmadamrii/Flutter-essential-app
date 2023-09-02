import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
              )
            ],
          ),
          title: const Text("Machine"),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.amber,
              child: const Center(
                child: Text("Hello world"),
              ),
            ),
            Container(
              color: Colors.amberAccent,
              child: const Center(
                child: Text("Data learning"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
