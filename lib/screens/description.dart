import 'package:basic/class/item_class.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key, required this.itemClass});

  final ItemClass itemClass;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  double fontSizeCustom = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.itemClass.title,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Hello snackbar!",
                  ),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(
              Icons.info,
            ),
          )
        ],
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
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 25;
                      });
                    },
                    child: const Text("Small Title"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: const Text("Medium Title"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 60;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text("Huge Title"),
                  )
                ],
              ),
              FittedBox(
                child: Text(
                  widget.itemClass.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
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
