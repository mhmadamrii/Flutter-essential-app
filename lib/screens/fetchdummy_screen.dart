import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchDummy extends StatelessWidget {
  const FetchDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      backgroundColor: Colors.white,
      body: const Apollo(),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.white,
        animationDuration: const Duration(
          milliseconds: 400,
        ),
        items: const <Widget>[
          Icon(
            Icons.home_filled,
            size: 30,
          ),
          Icon(
            Icons.person,
            size: 30,
          ),
          Icon(
            Icons.build,
            size: 30,
          )
        ],
      ),
    );
  }
}

class Apollo extends StatefulWidget {
  const Apollo({super.key});

  @override
  State<Apollo> createState() => _ApolloState();
}

class _ApolloState extends State<Apollo> {
  final _inputController = TextEditingController();
  String name = "";

  // fetch api
  final baseUrl = "https://642b9e08208dfe25471b9280.mockapi.io/api/v3/name";

  Future<http.Response> fetchData() {
    return http.get(Uri.parse(baseUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          children: [
            TextField(
              controller: _inputController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a search term",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = _inputController.text;
                });
              },
              child: const Text("Press here"),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
