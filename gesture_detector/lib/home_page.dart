import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 상태를 저장하는 변수 선언
  int _counter = 0;

  void _increment() {
    setState(() {
      // 이 안에 동작을 정의한다.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _increment,
            child: Text('Plus'),
          ),
          SizedBox(width: 16),
          Text('Count : $_counter')
        ],
      ),
    );
  }
}
