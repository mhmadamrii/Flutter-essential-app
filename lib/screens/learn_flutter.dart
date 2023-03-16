import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitched = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.ac_unit_outlined),
          ),
        ],
        title: const Text(
          "Learn page",
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.back_hand,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(
                10.0,
              ),
              padding: const EdgeInsets.all(
                20,
              ),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  "Hello world",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitched ? Colors.blue : Colors.amber,
              ),
              onPressed: (() {}),
              child: const Text("Elevated"),
            ),
            OutlinedButton(
              onPressed: (() {
                print("The button was clicked");
              }),
              child: const Text("Presss here"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                debugPrint("This is the row");
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                  Text("Row widget"),
                  Icon(
                    Icons.headphones,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitched = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/330px-Albert_Einstein_Head.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
