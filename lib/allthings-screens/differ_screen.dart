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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello wfdja;orld"),
            ElevatedButton(
              onPressed: _toggleData,
              child: const Text("Press here"),
            ),
            if (_showData)
              ...dummyData.map(
                (data) {
                  return Column(
                    children: [
                      Text("Id: ${data['id']}"),
                    ],
                  );
                },
              ).toList(),
          ],
        ),
      ),
    );
  }
}
