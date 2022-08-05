import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'foods_page.dart';

// file build cac Item Category cua page chinh
class CategoryItem extends StatelessWidget {
  // 1 categoryItem - 1 category object
  late Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    // InkWell: chuyen widget thanh nut bam
    // khi bam vao se chuyen qua file foods_page
    return InkWell(
      onTap: () {
        print('Tap to category: ${this.category.content}');
        // Navigate to another page
        // pages are stored into stack, the page you see is the top Page(in the stack)
        // cach 1: tao constructor
        /* Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FoodsPage(
              category: this.category,
            ),
          ),
        ); */
        // cach 2:  dung pushname
        Navigator.pushNamed(
          context,
          FoodsPage.routeName,
          arguments: {'category': this.category},
        );
        // 'FoodsPage' is "route's name", donot save like this, let's use a "static variable"
      },
      splashColor: Colors.deepPurple, // mau nhay len khi tap vao
      child: Container(
        decoration: BoxDecoration(
          // thay doi may A => mau b
          gradient: LinearGradient(
            colors: [_color.withOpacity(0.6), _color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            '${category.content}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
