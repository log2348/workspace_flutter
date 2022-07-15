import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOW CENTER"),
        centerTitle: true,
      ),
      /**
       * 화면 정 가운데 매치 공식 기본
       * 
       * 1. Center 위젯은 가로축으로 가운데 정렬
       * 2. 세로축으로 가운데 정렬은 Column + mainAxisAlignment.center
       * 공식 Center + Column(MainAxisAlignment.center)
       */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue[100],
              width: 300,
              height: 200,
              child: Padding(
                // EdgeInsets : 가장자리에 공간을 삽입하라
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0, 0),
                child: Text(
                  "Hello",
                  style: TextStyle(
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
              ),
            ),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}
