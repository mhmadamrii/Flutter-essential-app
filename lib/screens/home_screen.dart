// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:basic/models/category_model.dart';
import 'package:basic/models/product_model.dart';
import 'package:basic/widgets/custom_appbar.dart';
import 'package:basic/widgets/custom_bottombar.dart';
import 'package:basic/widgets/hero_carousel_card.dart';
import 'package:basic/widgets/second_title.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Homescreen(),
    );
  }

  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Zero to Unicorn',
      ),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map(
                    (category) => HeroCarouselCard(
                      category: category,
                    ),
                  )
                  .toList(),
            ),
          ),
          const SectionTItle(title: 'RECOMMENDED'),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 150,
                child: Image.network(
                  Product.products[0].imageUrl,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomAppbar(),
    );
  }
}
