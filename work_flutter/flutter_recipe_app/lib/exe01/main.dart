import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      home: RecipePage(),
    );
  }
}
