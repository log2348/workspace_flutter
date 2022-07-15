import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCircleAvater();
  }
}

Widget _buildCircleAvater() {
  return SizedBox(
    width: 150,
    height: 150,
    child: CircleAvatar(
      backgroundImage: AssetImage("assets/profile.jpg"),
    ),
  );
}
