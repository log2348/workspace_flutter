import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_buildFollowButton(), _buildMessageButton()],
    );
  }
}

Widget _buildFollowButton() {
  return InkWell(
    // InkWell 이벤트 처리
    onTap: () => {print("Follow 버튼 클릭됨")},
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text(
        'Follow',
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    ),
  );
}

Widget _buildMessageButton() {
  return InkWell(
    // 이벤트 처리시
    onTap: () => {print("Message 버튼 클릭됨")},
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text(
        'Message',
        style: TextStyle(color: Colors.black),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10)),
    ),
  );
}
