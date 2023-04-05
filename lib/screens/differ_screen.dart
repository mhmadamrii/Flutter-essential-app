import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DifferScreen extends StatefulWidget {
  const DifferScreen({super.key});

  @override
  State<DifferScreen> createState() => _DifferScreenState();
}

class _DifferScreenState extends State<DifferScreen> {
  String _responseText = "Loading...";

  Future<void> _fetchDummy() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    if (response.statusCode == 200) {
      print(response);
      setState(() {
        _responseText = response.body;
      });
    } else {
      setState(() {
        _responseText = "Error: ${response.statusCode}";
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchDummy();
    print("helloo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _responseText,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
