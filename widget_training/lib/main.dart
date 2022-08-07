import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _textController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Test'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(children: [
          SizedBox(
            height: 50,
          ),
          Text('아무거나 입력하세요'),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _textController,
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  result = _textController.text;
                  _textController.clear();
                });
              },
              child: Text(
                '보내기',
                style: TextStyle(fontSize: 15),
              )),
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
