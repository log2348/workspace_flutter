import 'package:flutter/material.dart';

import '../../size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    return SizedBox(
      width: bodyWidth,
      child: Column(
        children: [
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
