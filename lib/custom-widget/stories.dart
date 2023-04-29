import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  String randomName = faker.person.firstName();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://picsum.photos/id/1011/200',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              size: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          'Your Story',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.red),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://picsum.photos/seed/$index/200/300',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Center(
                child: Text("hello"),
              ),
            ],
          );
        },
      ),
    );
  }
}
