import 'package:flutter/material.dart';
import 'package:flutter_airbnb_2/components/common/common_form_field.dart';
import 'package:flutter_airbnb_2/size.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 420,
      child: Form(
          child: Padding(
        padding: const EdgeInsets.all(gap_l),
        child: Column(
          children: [_buildFormTitle(), _buildFormField(), _buildFormSubmit()],
        ),
      )),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("에어비앤비에서 숙소를 검색하세요."),
        SizedBox(
          height: gap_xs,
        ),
        Text("혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간전체 숙소까지 에어비앤비에 다 있습니다."),
        SizedBox(
          height: gap_xs,
        )
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormFiled(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(
          height: gap_s,
        ),
        Row(
          children: [
            Expanded(
                child: CommonFormFiled(
              prefixText: "체크인",
              hintText: "날짜 입력",
            ))
          ],
        )
      ],
    );
  }

  Widget _buildFormSubmit() {
    return Column(
      children: [],
    );
  }
}
