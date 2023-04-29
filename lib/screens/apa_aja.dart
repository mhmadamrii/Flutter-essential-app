import 'package:flutter/material.dart';

class ApaAja extends StatefulWidget {
  const ApaAja({super.key});

  @override
  State<ApaAja> createState() => _ApaAjaState();
}

class _ApaAjaState extends State<ApaAja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ChildApaAja(title: "Press here", content: "Lorem ipsum dolor sit amet"),
              ChildApaAja(title: "fjdk here", content: "Lorem ipsum dfjdal;jflksajdfl;dskolor sit amet")
            ],
          ),
        ),
      ),
    );
  }
}

class ChildApaAja extends StatefulWidget {
  // create variable for the constructor
  final String title;
  final String content;

  // create constructor here
  const ChildApaAja({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  State<ChildApaAja> createState() => _ChildApaAjaState();
}

class _ChildApaAjaState extends State<ChildApaAja> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            ElevatedButton(
              onPressed: null,
              child: Text("Press here"),
            )
          ],
        ),
        Text(widget.title),
        Text(widget.content)
      ],
    );
  }
}
