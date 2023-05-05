import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  var faker = new Faker();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<User> data = [
    User(name: faker.person.name(), email: faker.internet.email()),
    User(name: faker.person.name(), email: faker.internet.email()),
    User(name: faker.person.name(), email: faker.internet.email()),
    User(name: faker.person.name(), email: faker.internet.email()),
  ];

  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 1));
    data.clear();

    for (var i = 0; i < 5; i++) {
      data.add(
        User(
          name: faker.person.name(),
          email: faker.internet.email(),
        ),
      );
    }
    setState(() {
      return;
    });
  }

  Future<List<User>> futureData = getData();

  static Future<List<User>> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    var faker = new Faker();
    var data = List.generate(
      5,
      (index) => User(
        name: faker.person.name(),
        email: faker.internet.email(),
      ),
    );
    return data;
  }

  int _currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pull to refresh"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              futureData = getData();
            });
          },
          child: FutureBuilder<List<User>>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data!;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text("$index"),
                    ),
                    title: Text("data: ${data[index].name}"),
                    subtitle: Text(data[index].email),
                  ),
                );
              } else {
                return _buildSkeleton();
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (int newIndex) {
          setState(() {
            _currentScreen = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Person")
        ],
      ),
    );
  }
}

class User {
  late String name;
  late String email;

  User({required this.name, required this.email});
}

Widget _buildSkeleton() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: const CircleAvatar(),
        title: Container(
          height: 20,
          width: double.infinity,
          color: Colors.white,
        ),
        subtitle: Container(
          height: 16,
          width: double.infinity,
          color: Colors.white,
        ),
      ),
    ),
  );
}

