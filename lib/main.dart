import 'package:basic/screens/home.dart';
import 'package:basic/screens/instagram.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/instagram',
      debugShowCheckedModeBanner: false,
      routes: {
        '/instagram': (context) => const Instagram(),
      },
    );
  }
}