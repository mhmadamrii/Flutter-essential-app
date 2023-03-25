import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              // child: Container(decoration: ,),
            ),
          ],
        ),
      ),
    );
  }
}
