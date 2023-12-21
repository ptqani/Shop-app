import 'package:flutter/material.dart';
import 'package:shopping_app/pages/CartPage.dart';
import 'package:shopping_app/pages/FavoritePage.dart';
import 'package:shopping_app/pages/HomePage.dart';
import 'package:shopping_app/pages/Itempage.dart';
import 'package:shopping_app/pages/PersonPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "itemPage": (context) => Itempage(),
        "cartPage": (context) => CartPage(),
        "favorite": (context) => Favorite(),
        "person": (context) => Person(),
      },
    );
  }
}
