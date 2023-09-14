import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Color(
                  0xFF674AFF,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    70,
                  ),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "images/books.png",
                  scale: 0.8,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30,
                ),
                decoration: const BoxDecoration(
                  color: Color(
                    0xFF674AFF,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      "Learning is everything",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
