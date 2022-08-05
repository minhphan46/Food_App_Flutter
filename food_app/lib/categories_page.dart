import 'package:flutter/material.dart';
import 'category_item.dart';
import 'fake_data.dart';

// file build chua cac widget cua main Page, gom Grid cac CategoryBox
class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    // list theo dang luoi
    return GridView(
      padding: EdgeInsets.all(12), // khoang cach giua cac item
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300, // do rong max
        childAspectRatio: 3 / 2, // ti le chieu rong/ chieu cao
        crossAxisSpacing: 10, // do rong giua cac luoi theo chieu doc
        mainAxisSpacing: 10, // do rong theo chieu ngang
      ),
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(category: eachCategory))
          .toList(),
    );
  }
}
