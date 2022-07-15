import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'state full sample', home: DayAndNight());
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Today(),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.redAccent,
            ),
          )
        ]),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = "낮";

  void changeText() {
    setState(() {
      changeValue = (changeValue == "밤") ? "낮" : "밤";
      print("호출됨 !!");
    });
  }

  // 위젯이 렌더링 될 때 한 번만 초기화 되는 함수
  @override
  void initState() {
    changeValue = "낮";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeText();
      },
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}
