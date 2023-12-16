import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  late int count;

  CounterProvider({
    this.count = 0,
  });

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}
