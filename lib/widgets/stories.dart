// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  final bool isOpened;
  final String imageUrl;

  const Story({
    Key? key,
    required this.name,
    required this.isOpened,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isOpened
            ? Border.all(
                color: Colors.red,
                width: 3,
              )
            : null,
        boxShadow: isOpened
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ]
            : null,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipOval(
              child: Image.network(
                imageUrl,
              ),
            ),
          ),
          Text(name),
          if (!isOpened)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
