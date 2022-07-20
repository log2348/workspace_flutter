import 'package:dart_demo_2/dart_demo_2.dart' as dart_demo_2;

/**
 * 
 *  변수 : 타입 추론, 명시적 타입
 */

void main() {
  var name = "Voyager 1";
  var year = 1977;
  var antennaDimater = 3.7;
  var flyByObject = ['Jupiter', 'Saturn', 'Uranus'];
  var image = <String, dynamic>{
    "tags": ['saturn', 'abc'],
    'url': '//path/to/saurn.jpg'
  };

  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);
  List<String> tagsList = image['tags'] as List<String>;
  print('=====================');
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);
  print("===============");

  try {
    print(tagsList[2]);
  } catch (e) {
    print("예외가 발생");
  }

  // try {
  //   print(tagsList[2]);
  // } on Exception {
  //   print("예외가 발생 22222222222");
  // }

  print("11111111111111111");
  // Map 타입은 중괄호 {} 를 사용한다. - { key : value}
  // Map key value pair 방식이다.
  // List 타입은 [] 대괄호를 사용한다.

  // Late variable
  // Dart 2.12 버전 이후에 추가된 키워드 입니다.

  description = 'Hello world!';
  print(description);
}

// 선언 후 초기화된 null이 아닌 변수를 선언한다.
// 변수를 느리게 초기화 한다.
late String description;
