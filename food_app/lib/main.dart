import 'package:flutter/material.dart';
import 'package:food_app/foods_page.dart';
import 'categories_page.dart';

void main() {
  runApp(MyApp());
}

// man hinh chinh cua app
// giao dien khi bat dau
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App with Navigation',
      initialRoute: '/', // this is 'root'
      // routes = screen's paths ( duong dan toi man hinh)
      routes: {
        '/FoodsPage': (context) => FoodsPage(),
        '/CategoriesPage': (context) => CategoriesPage(),
      },
      // theme chinh cho App
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'McLaren',
        textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 52, 52, 1),
              fontSize: 18,
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 52, 52, 1),
              fontSize: 20,
            ),
            headline6: TextStyle(
              fontSize: 15,
              color: Colors.white,
              //fontFamily: 'Sunshiney',
              fontFamily: 'McLaren',
            )),
      ),
      // UI main page
      home: Scaffold(
        // appBar
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Food\'s categoties",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        // body
        body: SafeArea(
          child: CategoriesPage(),
        ),
      ),
    );
  }
}
