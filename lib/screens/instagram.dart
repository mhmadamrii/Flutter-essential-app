import 'package:basic/widgets/stories.dart';
import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Story(
                  name: "Jonathan Doe",
                  isOpened: false,
                  imageUrl: "https://picsum.photos/200",
                ),
                Story(
                  name: "Emily Doe",
                  isOpened: true,
                  imageUrl: "https://picsum.photos/201",
                ),
              ],
            ),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
          ],
        ),
      ),
    );
  }
}
