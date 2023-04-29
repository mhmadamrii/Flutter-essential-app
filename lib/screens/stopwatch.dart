import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  bool _isRunning = false;
  int _milliseconds = 0;
  Timer? _timer;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stopwatch",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "data",
            ),
            
          ],
        ),
      ),
    );
  }
}
