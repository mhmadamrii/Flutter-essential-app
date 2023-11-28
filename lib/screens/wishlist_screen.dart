import 'package:basic/widgets/custom_appbar.dart';
import 'package:basic/widgets/custom_bottombar.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Wishlist(),
    );
  }

  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Wishlist',
      ),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}