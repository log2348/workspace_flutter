import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/components/custom_form.dart';
import 'package:login/size.dart';

import '../components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          SizedBox(height: xlarge_gap),
          const Logo(title: "Login"),
          SizedBox(height: large_gap),
          CustomForm()
        ]),
      ),
    );
  }
}
