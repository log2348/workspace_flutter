void main(List<String> args) {}

// nullable 형식이 있는 변수는 초기화 되지 않은 변수이고 초기 값은 null이다.
// 모든 변수에는 nullable 유형이 있다. 심지어 숫자도 nullable
// 다트에서는 변수로 지정할 수 있는 모든 것들은 객체이기 때문이다
class Spacecraft {
  String name;
  DateTime? launchDate; // nullable 형식

  // getter
  int? get launchYear => launchDate?.year;

  // 기본 생성자
  Spacecraft(this.name, this.launchDate) {}

  // 이름이 있는 생성자
  Spacecraft.unlaunched(String name) : this(name, null);
}
