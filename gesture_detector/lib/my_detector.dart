import 'package:flutter/material.dart';

class MyDetectorWidget extends StatefulWidget {
  const MyDetectorWidget({Key? key}) : super(key: key);

  @override
  State<MyDetectorWidget> createState() => _MyDetectorWidgetState();
}

class _MyDetectorWidgetState extends State<MyDetectorWidget> {
  bool _isBroken = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // 오류 방지
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              _isBroken ? Icons.heart_broken : Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isBroken = !_isBroken;
              });
            },
          ),
        ],
      ),
    );
  }
}
