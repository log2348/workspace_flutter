import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _textController = TextEditingController();
  Text resultText = Text("");
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("소수 판별"),
          elevation: 0.0,
          backgroundColor: Colors.redAccent[100],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(children: [
              Text("숫자를 입력하세요."),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey[100],
                child: TextField(
                  onSubmitted: _checkNumber,
                  controller: _textController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                result,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        backgroundColor: Colors.white);
  }

// 소수 판별 메소드 작성
  void _checkNumber(String value) {
    print("메소드 실행");
    int num = int.parse(value);

    setState(() {
      // 소수 : 인수가 자신과 1뿐인 수
      // 3, 5, 7, 11, 13, 17, 19, 23, 31, 37...
      if (num % 2 != 0 || num % 3 != 0) {
        // 소수로 나눠지는 수들 제거 (121, ...)

        result = "소수입니다.";
      } else {
        result = "소수가 아닙니다.";
      }
    });
  }
}
