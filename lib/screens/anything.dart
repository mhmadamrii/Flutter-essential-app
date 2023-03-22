import 'package:flutter/material.dart';

class Anything extends StatelessWidget {
  const Anything({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "learn circle",
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              width: 1,
              color: Colors.red,
            ),
            shape: BoxShape.circle,
          ),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InsideMe(),
                    ),
                  );
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text("Hello world"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InsideMe extends StatefulWidget {
  const InsideMe({super.key});

  @override
  State<InsideMe> createState() => _InsideMeState();
}

class _InsideMeState extends State<InsideMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.red),
          ),
          child: Row(
            children: const [
              Text(
                "helow first row",
              ),
              Text(
                "helow second row",
              ),
              Text(
                "helow third row",
              ),
              Text(
                "helow third row",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
