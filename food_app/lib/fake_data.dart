import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/food.dart';

// ignore: unnecessary_const, constant_identifier_names
const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humbergers', color: Colors.pink),
  Category(id: 4, content: 'Italian', color: Colors.blueAccent),
  Category(id: 5, content: 'Milk & Youhurt', color: Colors.deepPurple),
  Category(id: 6, content: 'Vegetables', color: Colors.green),
  Category(id: 7, content: 'Fruits', color: Colors.deepOrange),
];
var FAKE_FOODS = [
  //array of food's objects
  Food(
      name: "sushi - 寿司",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/East_West_sushi_01.jpg/1280px-East_West_sushi_01.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage:
          "http://tondapizza.vn/themes/frontend/frontend_default/images/alici_e_pomodorini.png",
      duration: Duration(minutes: 15),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://d20aeo683mqd6t.cloudfront.net/images/imgs/000/063/242/original/makizushi_cut_plated_s1124936618.jpeg?1617158768&d=750x750",
      complexity: Complexity.Simple,
      duration: Duration(minutes: 20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://cdn.tgdd.vn/2021/07/content/tempura-la-gi-cach-lam-tempura-nhat-bot-tempura-la-gi-mua-o-dau-1-800x450.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://cdn.tgdd.vn/2021/10/CookDish/mon-sashimi-la-gi-cach-an-sashimi-nhat-ban-phan-biet-sushi-va-avt-1200x676.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
];
