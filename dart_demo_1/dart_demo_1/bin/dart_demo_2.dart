import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Chef c1 = Chef("고길동")..cook();
  // c1.cook() 한줄로 처리 (계단식 표기법)
  // .. 연산자를 사용하여 코드 한 줄로 객체를 변수로 넘겨주면서 객체가 가진 함수를 호출할 수 있는 표기법

}

class Chef {

  String name;

  Chef(this.name);

  void cook() {
    print("$name이 요리를 시작합니다.");
  }
}
