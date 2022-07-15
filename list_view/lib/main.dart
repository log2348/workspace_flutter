import 'package:flutter/material.dart';
import 'package:list_view/pages/recipe_page.dart';

void main() {
  runApp(const MyListViewApp());
}

class MyListViewApp extends StatelessWidget {
  const MyListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RecipePage());
  }
}
