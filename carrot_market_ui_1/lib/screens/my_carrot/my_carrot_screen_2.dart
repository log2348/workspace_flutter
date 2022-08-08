import 'package:carrot_market_ui_1/models/icon_menu.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

import 'components/card_icon_menu.dart';

class MyCarrotScreen2 extends StatelessWidget {
  const MyCarrotScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        bottom: const PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: IconMenu1,
          ),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: IconMenu2,
          ),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: IconMenu3,
          )
        ],
      ),
    );
  }
}
