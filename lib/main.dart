import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Dio dio = Dio();

  String _datas = "";
  Future<void> fetchData() async {
    try {
      Response res =
          await dio.get("https://jsonplaceholder.typicode.com/posts");
      setState(() {
        _datas = res.data.toString();
      });
      print(res.data);
    } catch (error) {
      print(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: fetchData,
                child: const Text(
                  "Press to fetch",
                ),
              ),
              Text(
                _datas,
              )
            ],
          ),
        ),
      ),
    );
  }
}
