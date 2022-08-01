import 'package:flutter/material.dart';
import 'package:flutter_airbnb_2/components/home/home_body_banner.dart';
import 'package:flutter_airbnb_2/components/home/home_body_popular.dart';

import '../../size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
            SizedBox(
              height: gap_l,
            )
          ],
        ),
      ),
    );
  }
}
