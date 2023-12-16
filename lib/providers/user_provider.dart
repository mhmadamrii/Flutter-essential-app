import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late String userName;

  UserProvider({
    this.userName = "Mapp",
  });

  void changeUserName({
    required String newUsername,
  }) async {
    userName = newUsername;
    notifyListeners();
  }
}
