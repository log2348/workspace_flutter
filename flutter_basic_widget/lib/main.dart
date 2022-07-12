import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

// 기본 위젯
// Text
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _name = "홍길동"; // StatelessWidget에서 변수 처리할 때 final로 선언해주기

  // 하나의 위젯으로 만들어 줌
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class BasicGesture extends StatelessWidget {
  const BasicGesture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("눌러졌네요 !!!!!");
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}

class BasicContainer extends StatelessWidget {
  const BasicContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 48.0,
        height: 48.0,
        // color: Colors.amber[600], // 데코레이션 사용시 color 속성 동시에 사용하면 오류
        decoration: BoxDecoration(
            color: Colors.amber[300],
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
      ),
    );
  }
}

class BasicStack extends StatelessWidget {
  const BasicStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class BasicRow extends StatelessWidget {
  const BasicRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Expanded(
          child: const Text(
              "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
        ),
        Expanded(child: const Icon(Icons.sentiment_very_satisfied)),
      ],
    );
  }
}
