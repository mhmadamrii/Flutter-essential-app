import 'package:basic/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  static const String routeName = '/catalog';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Catalog(),
    );
  }

  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Catalog',
      ),
    );
  }
}
