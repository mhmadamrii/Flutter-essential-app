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
          "Flutter Mapp",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardImage(
              itemClass: ItemClass(title: "Hello"),
            ),
            Row(
              children: [
                Expanded(
                  child: CardImage(
                    itemClass: ItemClass(title: "Fucking shit bro!"),
                  ),
                ),
                Expanded(
                  child: CardImage(
                    itemClass: ItemClass(title: "Average shit"),
                  ),
                ),
              ],
            ),
            CardImage(
              itemClass: ItemClass(title: "Yo this shit?"),
            )
          ],
        ),
      ),
    );
  }
}
