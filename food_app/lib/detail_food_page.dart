import 'package:flutter/material.dart';
import 'models/food.dart';

// file build page khi bam vao food, gom cac ingredient cua food do
class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({required this.food});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("This is detail food"),
      ),
      body: Column(
        children: [
          Center(
            // Hinh anh
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/Loading_icon.gif',
              image: food.urlImage,
            ),
          ),
          // dong chu Ingredient
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Ingredient',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // phan list ingredient
          Expanded(
            child: (food.ingredients?.length != null) // check null
                ? ListView.builder(
                    // xay dung List ingredient
                    itemCount: food.ingredients?.length,
                    itemBuilder: (context, index) {
                      String ingredient = food.ingredients![index];
                      return ListTile(
                        leading: CircleAvatar(
                          // hinh tron bao quanh #1
                          child: Text(
                            '#${index + 1}',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        title: Text(
                          ingredient,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      );
                    },
                  )
                : Text(
                    "No Ingredients",
                  ),
          ),
        ],
      ),
    );
  }
}
