import 'package:flutter/material.dart';
import 'package:flutter_ex_1/components/menu_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '위젯 연습',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image.asset("assets/images/burger.jpeg", fit: BoxFit.fitWidth),
            TItle(),
            Text("gggggggggggg"),
            Menu(),
            Text("gggggggggggg"),
          ],
        ),
      ),
    );
  }
}

class TItle extends StatelessWidget {
  const TItle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(Column(children: [
        Text("Oeschine Lake Campground"),
        Text("sub title")),
        Icon(Icons.star, color: Colors.red)
    ])
  }
}
