// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final List<String> _avatars = [
    'https://i.pravatar.cc/100?img=1',
    'https://i.pravatar.cc/100?img=2',
    'https://i.pravatar.cc/100?img=3',
    'https://i.pravatar.cc/100?img=4',
    'https://i.pravatar.cc/100?img=5',
    'https://i.pravatar.cc/100?img=6',
    'https://i.pravatar.cc/100?img=7',
    'https://i.pravatar.cc/100?img=8',
    'https://i.pravatar.cc/100?img=9',
    'https://i.pravatar.cc/100?img=10',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFDE0046),
                            Color(0xFFF7A34B),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pravatar.cc/100?img=10',
                          ),
                        ),
                      ),
                    ),
                    Text("Hello world")
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
