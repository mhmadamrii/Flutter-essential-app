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
          /* main stacks as UI */
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  left: 20,
                ),
                child: Container(
                  width: 200,
                  child: Image.asset(
                    "images/pic-1.png",
                  ),
                ),
              ),
              /* Thumbnail titles */
              Container(
                width: 400,
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome To",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    const Text(
                      "Dirbbox",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 280,
                      child: const Text(
                        "Best cloud storage platform for all business and individuals to manage there data",
                        style: TextStyle(
                          color: Color(
                            0xFF7B7F9E,
                          ),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Join For Free.",
                      style: TextStyle(
                        color: Color(
                          0xFF7B7F9E,
                        ),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    /* buttons sign in */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF567DF4),
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 15.0,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.fingerprint,
                                ),
                                Text(
                                  "Smart Id",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 15.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Sign In",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right_alt,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Create an account",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
