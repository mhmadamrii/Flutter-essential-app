// ignore_for_file: sized_box_for_whitespace

import 'package:basic/models/product.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Product> products = [];

  final dio = Dio();
  final String fakeStoreUrl = "https://fakestoreapi.com/products";

  @override
  void initState() {
    super.initState();
    // call function when the widget first mount
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await dio.get(fakeStoreUrl);

      if (response.statusCode == 200) {
        // parse JSON data
        final List<dynamic> data = response.data;
        setState(
          () {
            products = data
                .map(
                  (item) => Product(
                    name: item['title'].toString(),
                    description: item['description'].toString(),
                    imageUrl: item['image'].toString(),
                  ),
                )
                .toList();
          },
        );
      } else {
        throw Exception("failed to load data");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            const Text("Below is product list"),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ListTile(
                        title: Text(product.name),
                        subtitle: Text(product.description),
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
