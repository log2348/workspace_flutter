import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/tap.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '더보기',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.horizontal, // 정렬 방향
          alignment: WrapAlignment.start, // 정렬 방식
          children: List.generate(
            taps.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Icon(
                    taps[index].icon,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(taps[index].text)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
