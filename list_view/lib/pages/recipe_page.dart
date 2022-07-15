import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_view/components/recipe_list_item.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          RecipeListItem(
              imageUrl:
                  "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg",
              title: "Burger"),
          RecipeListItem(
              imageUrl:
                  "https://cdn.pixabay.com/photo/2016/03/05/19/02/salmon-1238248_960_720.jpg",
              title: "Salmon"),
          RecipeListItem(
              imageUrl:
                  "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_960_720.jpg",
              title: "Salmon"),
        ]),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        const Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        const SizedBox(width: 15),
        const Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
