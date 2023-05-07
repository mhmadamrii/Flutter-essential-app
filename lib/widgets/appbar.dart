import 'package:flutter/material.dart';

class InstagramAppbar extends StatefulWidget {
  final String title;

  const InstagramAppbar({Key? key, required this.title}) : super(key: key);

  @override
  State<InstagramAppbar> createState() => _InstagramAppbarState();
}

class _InstagramAppbarState extends State<InstagramAppbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'GrandInsta',
                fontSize: 25,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("tapped");
              },
              child: const Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
            )
          ],
        ),
        Row(
          children: const [
            ImageIcon(
              AssetImage(
                'lib/assets/heart.png',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            ImageIcon(
              AssetImage(
                'lib/assets/messenger.png',
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
