// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Trying extends StatelessWidget {
  const Trying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello from flutter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Person",
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              "Lorem ipsum dolor",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Nostrud qui sunt sunt pariatur non enim voluptate nulla pariatur deserunt in duis ullamco velit. Ut deserunt anim dolore consequat commodo anim consectetur. Id veniam enim magna aliquip qui nostrud. Do consectetur voluptate exercitation elit in quis esse labore esse. Est ipsum occaecat pariatur enim sit occaecat.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
