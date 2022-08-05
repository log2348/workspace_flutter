import 'package:carrot_market_ui_1/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../../../theme.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyText1),
          const SizedBox(height: 4.0),
          Text('${product.address} • ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text(numberFormat(product.price), style: textTheme().headline2),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0, // true, false
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');

    return formatter.format(int.parse(price)) + "원";
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text("$count"),
      ],
    );
  }
}
