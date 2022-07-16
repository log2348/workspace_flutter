import 'package:flutter/material.dart';
import 'package:login/components/custom_text_form_field.dart';
import 'package:login/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);
/**
 * 
 * Form 위젯은 데이터 전송을 위해
 * 여러 양식의 위젯을 함께 그룹화 해주는 컨테이너 위젯
 */

  @override
  Widget build(BuildContext context) {
    /**
     * Global Key
     * 이 key는 폼 내부의 TextFormField 값들을 저장하고
     * validation 처리하는데 사용된다.
     */
    final _formKey = GlobalKey<FormState>();
    return Form(
      // 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(children: [
        CustomTextField(text: "Email"),
        SizedBox(height: medium_gap),
        CustomTextField(text: "Password"),
        SizedBox(height: large_gap),
        TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"))
      ]),
    );
  }
}
