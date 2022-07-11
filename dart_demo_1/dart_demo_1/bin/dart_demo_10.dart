import 'dart:math';

void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  // map 함수는 무언가 변형(변경, 가공)해야 할 때 사용하면 굉장히 편리하다.
  var chobabChange = chobab.map((e) => "간장_$e").toList();
  print(chobabChange);
  print(chobabChange.runtimeType);
  print(chobab.runtimeType); // 깊은 복사

  // var chobabChange = chobab; // 얕은복사 (주소값을 넣어주는 것)
  // print(chobabChange);
  // chobabChange.add("간장 새우초밥");
  // print(chobab);
}