import 'package:basic/class/item_class.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.itemClass,
  });

  final ItemClass itemClass;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("clicked");
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/handle-rocket.png",
              ),
              Text(
                itemClass.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "This is ${itemClass.title} Description",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
