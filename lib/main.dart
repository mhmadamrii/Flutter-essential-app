import 'package:basic/screens/homepage.dart';
import 'package:basic/screens/login_screen.dart';
import 'package:basic/screens/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile(),
    );
  }
}

/* link figma
  https://www.figma.com/file/FaiRyNdXnZr9aZXKuuguVN/Dirbbox-Online-Cloud-Storage-(Community)?type=design&node-id=0-1&mode=design&t=h2lSMvTNHRiS7oVT-0
*/
