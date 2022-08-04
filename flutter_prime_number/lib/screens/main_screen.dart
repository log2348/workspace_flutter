import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _textController = TextEditingController();
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
                height: 20,
              ),
              Container(
                color: Colors.grey[100],
                child: TextField(
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
              TextButton(
                  onPressed: () {
                    setState(() {
                      result = _checkNumber();
                      // _textController.clear();
                    });
                  },
                  child: Text('확인')),
              SizedBox(
                height: 20,
              ),
              Text(
                result,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        backgroundColor: Colors.white);
  }

// 소수 판별 메소드 작성
  String _checkNumber() {
    print("메소드 실행");

    String value = _textController.text;
    int num = int.parse(value);

    // 소수 : 인수가 자신과 1뿐인 수
    if (num != 1) {
      if (num != 2) {
        for (int i = 2; i < num; i++) {
          if (num % i == 0) {
            // 1, 자신 제외하고 나눠지는 수가 있으면 소수가 아닌 것
            result = '소수가 아닙니다.';
            break;
          } else {
            result = '소수입니다.';
          }
        }
      } else {
        result = '소수입니다.';
      }
    } else {
      result = '소수가 아닙니다.';
    }

    return result;
  }
}
