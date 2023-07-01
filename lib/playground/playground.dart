import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Playground extends StatefulWidget {
  const Playground({Key? key}) : super(key: key);

  @override
  State<Playground> createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  final String baseURL = "https://jsonplaceholder.typicode.com";
  String responseText = '';
  List<dynamic> responseTitle = [];

  Future<void> makeGetRequest() async {
    final url = Uri.parse('$baseURL/posts');
    final response = await get(url);
    final parsedResponse = jsonDecode(response.body);
    final titles = parsedResponse.map((item) => item['title']).toList();
    print(parsedResponse);
    // print(response.body);
    setState(() {
      responseTitle = titles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: makeGetRequest,
              child: const Text("Print here"),
            ),
            // display the result here
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: responseTitle
                      .map((e) => Text("The title is $e"))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
