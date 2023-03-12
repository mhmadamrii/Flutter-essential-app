import 'package:basic/chat-gpt/save_us.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SaveUs(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Apollo extends StatefulWidget {
  const Apollo({super.key});

  @override
  State<Apollo> createState() => _ApolloState();
}

class _ApolloState extends State<Apollo> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "wowkwk",
        ),
      ),
      body: Column(
        mainAxisAlignment: number == 0
            ? MainAxisAlignment.start
            : number == 1
                ? MainAxisAlignment.center
                : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                number == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    number++;
                    print(number);
                  });
                }),
                child: const Text(
                  "Press",
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    number = 0;
                    print(number);
                  });
                },
                child: const Text(
                  "Reset number",
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.home,
          ),
        ),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello world",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
