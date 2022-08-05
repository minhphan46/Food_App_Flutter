import 'dart:ui';
import 'package:flutter/material.dart';
import 'fake_data.dart';
import 'package:food_app/categories_page.dart';
import 'package:food_app/models/category.dart';
import 'models/food.dart';
import 'package:food_app/detail_food_page.dart';

// file nay build UI phan cac mon an cua category
class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    // Navigator de chuyen trang
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    this.category = arguments!['category'];
    // Filter foods of from category
    List<Food> foods = FAKE_FOODS
        .where((food) => food.categoryId == this.category?.id)
        .toList();
    // Build IU
    return Scaffold(
      // Appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Foods from ${category?.content}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      // phan ListView
      body: Center(
        // check dk: neu ko co food thi ra text, con lai thi ListView
        child: foods.length > 0
            ? ListView.builder(
                itemCount: foods.length, // so luong food
                itemBuilder: (context, index) {
                  // xay phan UI tung food
                  Food food = foods[index];
                  return InkWell(
                    onTap: () {
                      // khi bam vao hinh anh thi chuyen sang file detailFoodPage
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailFoodPage(food: food), // truyen vao food
                        ),
                      );
                    },
                    // phan UI cua food
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          // Dieu chinh hinh anh cho dep
                          child: ClipRRect(
                            // show images
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.hardEdge,
                            child: Center(
                              // phan Hinh anh
                              child: FadeInImage.assetNetwork(
                                placeholder:
                                    "assets/images/Loading_icon.gif", // anh khi loading
                                image: food.urlImage,
                              ),
                            ),
                          ),
                        ),

                        // dong ho va thoi gian
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                Text(
                                  ' ${food.duration?.inMinutes} minutes',
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // phan ten
                        Positioned(
                          bottom: 30,
                          right: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "${food.name}",
                              style: const TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // phan do kho
                        Positioned(
                          top: 30,
                          right: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "${food.complexity.toString().split('.').last}",
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            : const Text(
                'No food found',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
      ),
    );
  }
}
