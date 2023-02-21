import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: const ChildTodo(),
    );
  }
}

class ChildTodo extends StatefulWidget {
  const ChildTodo({super.key});

  @override
  State<ChildTodo> createState() => _ChildTodoState();
}

class _ChildTodoState extends State<ChildTodo> {
  TextEditingController controllerText = TextEditingController(
    text: "input here",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Text("Hello there"),
              Text(
                style: const TextStyle(
                  fontSize: 40,
                ),
                controllerText.text,
              ),
              TextField(
                style: const TextStyle(fontSize: 40),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controllerText,
              ),
              const TextField(
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: const Text(
                  "Elevated Button",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
