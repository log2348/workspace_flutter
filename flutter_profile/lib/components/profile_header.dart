import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        _buildHeaderAvater(),
        SizedBox(
          width: 20,
        ),
        _buildHeaderProfile()
      ],
    );
  }

  Column _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "flutter coding",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text(
          "플러터 개발자 / CEO  / CTO",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "부트캠프 1",
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}

Widget _buildHeaderAvater() {
  return SizedBox(
    width: 100,
    height: 100,
    child: CircleAvatar(
      // 이미지를 원형으로 만들어줌
      backgroundImage: AssetImage("assets/avater.jpg"),
    ),
  );
}
