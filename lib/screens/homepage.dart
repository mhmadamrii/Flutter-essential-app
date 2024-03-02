import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/images/amazon.png",
          height: 25,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/images/amazon.png"),
            ),
          )
        ],
      ),
      body: Center(
        child: Text('Hello world lorem ipsum'),
      ),
    );
  }
}
