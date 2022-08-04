import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/components/product_card.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              const Text(
                '좌동',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(
              Icons.list,
              color: Colors.black,
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(
              Icons.alarm_add,
              color: Colors.black,
            ),
            const SizedBox(
              width: 15,
            )
          ]),
      body: ListView(
        children: List.generate(
          productList.length,
          (index) => ProductCard(product: productList[index]),
        ),
      ),
    );
  }
}
