// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /* background */
          Container(
            width: double.infinity,
            child: Image.asset(
              "images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 90,
                  left: 30,
                ),
                child: Container(
                  width: 200,
                  child: Image.asset(
                    "images/pic-1.png",
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: const Text(
                  "Welcome To",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
