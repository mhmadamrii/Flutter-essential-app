import 'dart:ui';

import 'package:basic/screens/fetchdummy_screen.dart';
import 'package:basic/screens/foundation_screen.dart';
import 'package:flutter/material.dart';

class DifferScreen extends StatefulWidget {
  const DifferScreen({super.key});

  @override
  State<DifferScreen> createState() => _DifferScreenState();
}

class _DifferScreenState extends State<DifferScreen> {
  final List<Map<String, dynamic>> dummyData = [
    {'id': 1, 'name': 'Jonathan', 'isLogin': true},
    {'id': 2, 'name': 'Emily', 'isLogin': false}
  ];

  bool _showData = false;

  // function handle show data
  void _toggleData() {
    setState(() {
      _showData = !_showData;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("the dummy data is $dummyData");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapping"),
      ),
      body: const ChildDiffer(),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text("Hello wfdja;orld"),
      //       ElevatedButton(
      //         onPressed: _toggleData,
      //         child: const Text("Press here"),
      //       ),
      //       if (_showData)
      //         ...dummyData.map(
      //           (data) {
      //             return Column(
      //               children: [
      //                 Text("Id: ${data['id']}"),
      //                 Text('Name: ${data['name']}'),
      //                 Text('Is Login: ${data['isLogin']}'),
      //                 const SizedBox(
      //                   height: 16,
      //                 ),
      //               ],
      //             );
      //           },
      //         ).toList(),
      //     ],
      //   ),
      // ),
    );
  }
}

class ChildDiffer extends StatelessWidget {
  const ChildDiffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 50,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                OutlinedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const FetchDummy()),
                      ),
                    );
                  }),
                  child: const Text("Elevated"),
                ),
                TextButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const Foundation()),
                      ),
                    );
                  }),
                  child: const Text("Try click here"),
                ),
                const Text(
                  "Exercitation cupidatat irure dolor deserunt minim cupidatat. Voluptate et duis cupidatat adipisicing incididunt nostrud labore est excepteur culpa ut sit excepteur. Laboris tempor nulla voluptate nostrud enim laboris cillum adipisicing nisi nisi laborum quis.",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Veniam ullamco officia qui Lorem culpa qui commodo aliqua dolore anim Lorem aliquip. Qui cupidatat proident velit quis dolore exercitation commodo esse pariatur cillum est eu. Dolor ullamco velit minim fugiat pariatur ea reprehenderit exercitation velit nisi esse. Ea velit consequat officia sint nostrud nostrud pariatur ipsum occaecat reprehenderit nulla. Irure et dolore mollit anim eiusmod ad nulla magna nisi fugiat. Non fugiat ea aliqua Lorem. Irure nulla deserunt reprehenderit id excepteur mollit laborum commodo id sit.",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
