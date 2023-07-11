import 'package:basic/class/item_class.dart';
import 'package:basic/widgets/card_image.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Traveleme",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardImage(
              itemClass: ItemClass(
                title: "Destination",
                imagePath: "images/maps-travel.png",
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardImage(
                    itemClass: ItemClass(
                      title: "Agendas",
                      imagePath: "images/travel-book.png",
                    ),
                  ),
                ),
                Expanded(
                  child: CardImage(
                    itemClass: ItemClass(
                      title: "Preparation",
                      imagePath: "images/lounge-hiking.png",
                    ),
                  ),
                ),
              ],
            ),
            CardImage(
              itemClass: ItemClass(
                title: "Yo this Travel?",
                imagePath: "images/handle-rocket.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
