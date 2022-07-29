import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_header.dart'; // 절대경로

import '../components/home/home_body.dart'; // 상대경로

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [HomeHeader(), HomeBody()],
      ),
    );
  }
}
