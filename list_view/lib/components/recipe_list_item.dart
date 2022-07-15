import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const RecipeListItem({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 2 / 1, // 레이아웃 제약에서 허용하는 가장 큰 너비 시도
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "${imageUrl}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(fontSize: 20)),
        Text(
          "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
