import 'package:basic/screens/another.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Another(),
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});
// primitive data type
  final String name = "John";
  final int age = 40;
  final bool isLogin = true;

  String inputValue = '';

// nonprimitive data type
  final List<String> names = ["John", "Doe", "Foo", "Bar"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("The name is: $name"),
              Text("The age is: $age"),
              if (isLogin) ...[
                const Text("Hello user"),
              ] else ...[
                const Text("No user found")
              ],
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Text(names[index]);
                  },
                ),
              ),
              TextField(
                onChanged: (value) => inputValue = value,
                decoration: const InputDecoration(
                  labelText: "Input here..",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("input value: $inputValue"),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
