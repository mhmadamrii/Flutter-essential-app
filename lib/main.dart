import 'package:basic/playground/playground.dart';
import 'package:basic/screens/homepage.dart';
import 'package:basic/utils/notifiers.dart';
import 'package:basic/widgets/tree_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          home: const WidgetTree(),
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
