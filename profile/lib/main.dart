import 'package:flutter/material.dart';
import 'package:profile/components/drawer.dart';
import 'package:profile/components/profile_header.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileHeader(),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.redAccent,
    leading: Icon(Icons.arrow_back_ios),
    title: Text("CircleAvater 테스트"),
    centerTitle: true,
  );
}
