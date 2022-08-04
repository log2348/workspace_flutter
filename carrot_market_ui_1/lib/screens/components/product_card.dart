import 'package:carrot_market_ui_1/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(product.urlImage),
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 2),
                Text(
                  "${product.address} º ${product.publishedAt}",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 2),
                Text(
                  "${product.price}원",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          const Spacer(),
          if (product.commentsCount > 0)
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 70,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  product.commentsCount.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          if (product.heartCount > 0)
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 70,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  product.heartCount.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
        ],
      ),
    );
  }
}
