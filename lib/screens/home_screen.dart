import 'package:basic/widgets/custom_appbar.dart';
import 'package:basic/widgets/custom_bottombar.dart';
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
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Zero to Unicorn',
      ),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}
