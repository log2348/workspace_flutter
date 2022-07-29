import 'package:flutter/material.dart';

class CommonFormFiled extends StatelessWidget {
  const CommonFormFiled(
      {Key? key, required this.prefixText, required this.hintText})
      : super(key: key);

  final prefixText;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 30, left: 20, bottom: 10),
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ))),
        )
      ],
    );
  }
}
