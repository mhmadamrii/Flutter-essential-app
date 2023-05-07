import 'package:basic/widgets/photo.dart';
import 'package:basic/widgets/stories.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final bool hasNewNotifications = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              InstagramAppbar(
                title: "Instagram",
              ),
              Stories(),
              Divider(),
              Photos(
                userName: "Emily",
                imageAvatar: 'https://i.pravatar.cc/100?img=1',
                imageContent: 'https://picsum.photos/250?image=7',
                likes: 40,
                userPostDescription: "Lorem ipsum dolor sit amet, consectetuer",
              ),
              Photos(
                userName: "Daniel",
                imageAvatar: 'https://i.pravatar.cc/100?img=4',
                imageContent: 'https://picsum.photos/250?image=5',
                likes: 150,
                userPostDescription:
                    "Lorem ipsum dolor sit amet, Proident tempor nulla in nostrud. In cupidatat magna fugiat et deserunt ut eu id eu laborum. Minim cupidatat elit velit aliqua. Proident cillum ipsum commodo nostrud culpa officia enim dolore adipisicing in minim eiusmod dolore. Consequat est nostrud proident ad ad voluptate sit laboris nisi. Sunt in deserunt commodo velit id do. Veniam est voluptate aliqua aliquip duis qui qui mollit excepteur elit velit culpa.",
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: SizedBox(
      //   height: 60,
      //   child: BottomNavigationBar(
      //     elevation: 0,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Image.asset(
      //           'lib/assets/home.png',
      //           height: 20,
      //         ),
      //         label: "",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Image.asset(
      //           'lib/assets/search.png',
      //           height: 20,
      //         ),
      //         label: "",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Image.asset(
      //           'lib/assets/video-player.png',
      //           height: 20,
      //         ),
      //         label: "",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Image.asset(
      //           'lib/assets/bag.png',
      //           height: 20,
      //         ),
      //         label: "",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Stack(
      //           children: [
      //             const CircleAvatar(
      //               backgroundImage: NetworkImage(
      //                 "https://i.pravatar.cc/100?img=1",
      //               ),
      //             ),
      //             if (hasNewNotifications)
      //               Positioned(
      //                 top: 34,
      //                 bottom: 0,
      //                 left: 16,
      //                 // right: 0,
      //                 child: Container(
      //                   width: 8,
      //                   height: 8,
      //                   decoration: const BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: Colors.red,
      //                   ),
      //                 ),
      //               )
      //           ],
      //         ),
      //         label: "",
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
