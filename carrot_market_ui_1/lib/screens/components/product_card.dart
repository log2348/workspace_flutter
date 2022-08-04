import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: NetworkImage(product.urlImage), fit: BoxFit.contain)),
        ),
        Column(
          children: [
            Text(
              product.title,
              style: textTheme().bodyText1,
            ),
            Text(
              product.address,
              style: textTheme().bodyText2,
            ),
            Text(
              "product.price" + "원",
              style: textTheme().subtitle1,
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.chat_bubble,
              color: Colors.grey,
            ),
            Text(
              product.commentsCount,
              style: textTheme().bodyText2,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            Text(
              product.heartCount,
              style: textTheme().bodyText2,
            )
          ],
        )
      ],
    );
  }
}
