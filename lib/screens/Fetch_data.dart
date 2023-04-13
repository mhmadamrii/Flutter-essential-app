import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  final String _url = 'https://jsonplaceholder.typicode.com/posts/1';
  String _result = '';

  Future<void> _makeRequest() async {
    try {
      Response response = await Dio().get(_url);
      print("The response is ${response}");
      setState(() {
        _result = response.data['title'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Previous",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          30,
        ),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: _makeRequest,
                child: const Text(
                  "Press to fetch",
                ),
              ),
              Text(_result)
            ],
          ),
        ),
      ),
    );
  }
}
