//  1. 구글에서 제공하는 기본 위젯과 테마들을 사용하기 위해서 가져와야 한다.
import 'package:flutter/material.dart';

// main 함수는 컴파일러에게 앱의 시작점을 알려준다.
// void는 메인 함수 실행 완료시 아무 값도 리턴하지 않는다.
// runApp : 주어진 인자값으로 들어오는 위젯을 루트 위젯으로 만들어 준다.
// 위젯 트리를 생성해준다.
// 플러터는, 또는 다트는 문장의 끝은 항상 세미콜론으로 마쳐야 한다.
// main runApp 함수, MyApp 클래스
void main() => runApp(MyApp());

/*
void main() {
  runApp(app);
}
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // build
  // flutter에서 제공하는 모든 위젯은 또 다른 위젯을 리턴하는 build 함수를 가지고 있다.
  @override
  Widget build(BuildContext context) {
    // 플러터에서 제공하는 Material 디자인을 사용하는 위젯을 상위 위젯으로 만들어준다.
    // PrimarySwatch = 우리가 만들 앱의 기본 음영들을 설정한다.
    return MaterialApp(
      title: 'my flutter app',
      theme: ThemeData(primarySwatch: Colors.orange), // Swatch : 견본
      home: MyHomePage(),
    );
  }
}

// 항상 stateless 위젯, stateful 위젯을 사용해야 할지 먼저 고민을 해야한다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // Scaffold : 발판을 만들어주다.
  // 앱을 빨리 만들 수 있도록 가장 많이 사용하는 시각적 레이아웃을 구성해주는 발판이다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        // 모든 자식 위젯들을 수직으로 배치하는 녀석
        child: Column(
          children: [
            Container(
                width: double.infinity, // 화면 끝까지 늘어남
                height: 50,
                color: Colors.red,
                child: Text(
                  'Hello 1',
                  textAlign: TextAlign.center,
                )),
            const Text(
              'Hello 2',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Hello 3',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
