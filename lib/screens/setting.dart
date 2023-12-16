import 'package:basic/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Username: ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<UserProvider>().changeUserName(
                      newUsername: userNameController.text,
                    );
              },
              child: const Text("Change"),
            )
          ],
        ),
      ),
    );
  }
}
