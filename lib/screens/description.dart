import 'package:basic/class/item_class.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key, required this.itemClass});

  final ItemClass itemClass;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.itemClass.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(widget.itemClass.imagePath),
              Wrap(
                spacing: 30,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Small Title"),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Medium Title"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text("Huge Title"),
                  )
                ],
              ),
              FittedBox(
                child: Text(
                  widget.itemClass.title,
                  style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Do laboris ut id ex laborum esse mollit occaecat incididunt nisi et. Sint reprehenderit dolore aliqua aliqua quis. Consectetur nulla ad occaecat duis est fugiat ullamco sint. Laborum aliquip irure duis amet exercitation irure fugiat. Cillum nostrud consequat ullamco anim commodo commodo pariatur Lorem. Proident quis incididunt eu amet proident eiusmod dolor est proident est quis. Incididunt occaecat ipsum velit adipisicing adipisicing et. Laborum irure reprehenderit esse sint excepteur laboris reprehenderit labore laboris. Sunt qui qui occaecat pariatur id magna aliquip reprehenderit cupidatat in. Eu id Lorem quis enim. Anim pariatur consequat ea nisi. Id elit et voluptate excepteur. Ex laboris culpa anim sint.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
