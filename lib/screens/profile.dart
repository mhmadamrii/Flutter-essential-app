import 'package:basic/utils/notifiers.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'images/maps-travel.png',
            ),
            radius: 60,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "John Doe",
            ),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "fluttery@gmail.com",
            ),
            leading: Icon(Icons.email),
          ),
          ListTile(
            title: Text(
              "https://flutterorg.com",
            ),
            leading: Icon(Icons.web),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(
                Icons.dark_mode,
              );
            } else {
              return const Icon(
                Icons.light_mode,
              );
            }
          },
        ),
      ),
    );
  }
}
