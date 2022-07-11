import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Person p1 = Person(name: "홍길동"); // 선택적 매개변수 사용하면 순서 상관없이 키 값으로 값 넣을 수 있다.
  Person p2 = Person(
    money: 1000,
    name: "임꺽정"
    );

  Person p3 = Person(name: "유관순", money: 20000);

  print("${p1.name}의 재산은 ${p1.money}");
  print("${p2.name}의 재산은 ${p2.money}");

}

class Person {

  // String? name; // nullable
  String name; // nullable
  int money;

  Person({required this.name, this.money = 1000}); // nullable 쓰거나 required 써야한다.
  // 선택적 매개변수 쓰는 이유
  // 값 설정 안 하면 기본값으로 넣을 수 있다.

}

