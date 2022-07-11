
// class Person {
//   String name;
//   int age;

//   Person({required this.name, required this.age});
// }

class Person {
  String? name;
  int? age;

  // Person({this.name, this.age = 0}); // default값 넣을 수 있다
  Person({this.name, this.age});
}

void main() {

  Person p1 = Person(name: "name");
  print(p1.age);

  p1.age = 10;
  // null 대체 연산자 활용
  int mAge = p1.age ?? 1;
  print(mAge);

}