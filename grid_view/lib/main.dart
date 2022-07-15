import 'package:flutter/material.dart';

void main() {
  runApp(const MyGirdViewApp());
}

class MyGirdViewApp extends StatelessWidget {
  const MyGirdViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("그리드뷰 연습"),
          backgroundColor: Colors.red[100],
        ),
        body: _buildGirdView(),
      ),
    );
  }
}

class _buildGirdView extends StatelessWidget {
  const _buildGirdView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 한개의 행(row)에 보여줄 아이템 개수
            crossAxisSpacing: 10, //
            mainAxisSpacing: 10),
        itemCount: 33,
        itemBuilder: (context, index) {
          return Image.network("https://picsum.photos/id/${index + 1}/200/200");
        });
  }
}
