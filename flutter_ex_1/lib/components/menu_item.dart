import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildMenuItem(Icons.call, "CALL"),
        _buildMenuItem(Icons.route, "ROUTE"),
        _buildMenuItem(Icons.share, "SHARE")
      ],
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 60,
    height: 80,
    child: Column(children: [
      Icon(
        mIcon,
        color: Colors.blue,
        size: 30,
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: TextStyle(color: Colors.blue),
      )
    ]),
  );
}
