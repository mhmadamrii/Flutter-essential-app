import 'package:basic/config/app_router.dart';
import 'package:basic/config/theme.dart';
import 'package:basic/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero to Unicorn',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Homescreen.routeName,
      theme: theme(),
      home: const Homescreen(),
    );
  }
}
