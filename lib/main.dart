import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          "Todo app",
        ),
      ),
      body: Column(
        children: [
          _buildTaskInput(),
          _buildTaskList(),
        ],
      ),
    );
  }

  Widget _buildTaskInput() {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 40,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter a task',
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _addTask(controller.text);
              controller.clear();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget _buildTaskList() {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          Color backgroundColor =
              index.isEven ? Colors.blueGrey : Colors.white38;
          return Container(
            color: backgroundColor,
            child: ListTile(
              title: Text(
                tasks[index],
              ),
              trailing: IconButton(
                onPressed: () {
                  _deleteTask(index);
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}
