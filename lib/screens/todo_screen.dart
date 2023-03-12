import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String> _todoList = [];

  // function to add todo
  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // ignore: unused_local_variable
        String newTodoTitle = '';
        return AlertDialog(
          title: const Text(
            "Add new todo?",
          ),
          content: TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
              labelText: 'Todo title',
            ),
            onChanged: (value) {
              newTodoTitle = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              child: const Text(
                'cancel',
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _todoList.add(newTodoTitle);
                  print(newTodoTitle);
                });
              }),
              child: const Text(
                "Add new todo",
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addTodo();
        },
        tooltip: 'Add todo',
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            title: Text(
              _todoList[index],
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            value: false,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}

class Todo {
  String title;
  bool completed;

  Todo({
    required this.title,
    required this.completed,
  });
}
