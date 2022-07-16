import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/size.dart';

import '../components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          SizedBox(height: 20),
          Logo(title: "Login"),
          SizedBox(height: medium_gap),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Get Started"))
        ]),
      ),
    );
  }
}
