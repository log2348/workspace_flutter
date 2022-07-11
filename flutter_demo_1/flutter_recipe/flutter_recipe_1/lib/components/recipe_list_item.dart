import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {

    final String imageName;
    final String title;

    const RecipeListItem ({Key? key, required this.imageName, required this.title})
        : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20), // vertical - top, bottom에 적용
      child: Column(
        children: [
          Image.asset("assets/images/${imageName}.jpeg",
          fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
          style:
          TextStyle(
            color: Colors.grey,
            fontSize: 12
          ),
          )
        ],
      ),
    );
  }
}