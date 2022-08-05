import 'dart:math';
import 'category.dart';
import 'package:flutter/cupertino.dart';

// Quan he Category - Food : 1 - N
class Food {
  late int id;
  String? name;
  String urlImage;
  Duration? duration; // thoi gian che bien mon an
  Complexity? complexity;
  // one food have many ingredients
  List<String>? ingredients = <String>[];
  // reference: 1 Category has many Foods
  int? categoryId;
  // constructor
  Food({
    required this.name,
    required this.urlImage,
    required this.duration,
    this.complexity,
    this.ingredients,
    this.categoryId,
  }) {
    // id  lay ramdom 0 -> 999
    this.id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard,
}
