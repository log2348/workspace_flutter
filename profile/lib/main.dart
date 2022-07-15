import 'package:flutter/material.dart';
import 'package:profile/components/drawer.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Drawer 테스트"),
          ),
        ],
      ),
      endDrawer: MyDrawer(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    title: Text("Drawer 테스트"),
    centerTitle: true,
  );
}
