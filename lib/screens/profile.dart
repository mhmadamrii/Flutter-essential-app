import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F1F1),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF22215B),
          ),
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Flutter developer",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ut cillum in sunt sunt excepteur sit.Amet enim Lorem sunt est ut aute tempor nisi id ad nulla duis nisi aute.",
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: const Color(0xFFFF317B),
                    ),
                    width: 60,
                    height: 30,
                    child: const Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
