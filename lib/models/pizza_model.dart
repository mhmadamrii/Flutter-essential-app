import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Pizza extends Equatable {
  final String id;
  final String name;
  final Image image;

  const Pizza({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image];

  static List<Pizza> pizzas = [
    Pizza(
      id: '0',
      name: 'pizza',
      image: Image.asset('images/pizza1.png'),
    ),
    Pizza(
      id: '1',
      name: 'pizza papperoni',
      image: Image.asset('images/pngwing.com.png'),
    )
  ];
}
