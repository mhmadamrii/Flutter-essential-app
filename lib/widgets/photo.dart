// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Photos extends StatefulWidget {
  final String userName;
  final String imageAvatar;
  final String imageContent;
  final int likes;
  final String userPostDescription;

  const Photos({
    Key? key,
    required this.userName,
    required this.imageAvatar,
    required this.imageContent,
    required this.likes,
    required this.userPostDescription,
  }) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    widget.imageAvatar,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ),
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 300,
          child: Image.network(
            widget.imageContent,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  isLiked ? Icons.favorite_rounded : Icons.favorite_border,
                  color: isLiked ? Colors.red : null,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const ImageIcon(
                  AssetImage(
                    'lib/assets/bubble-chat.png',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const ImageIcon(
                  AssetImage(
                    'lib/assets/send.png',
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: ImageIcon(
                AssetImage(
                  "lib/assets/save-instagram.png",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "${widget.likes} likes",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Text(
                    widget.userName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.userPostDescription,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
