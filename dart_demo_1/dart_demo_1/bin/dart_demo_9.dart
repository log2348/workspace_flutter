import 'dart:math';

void main(List<String> args) {
  var list = [1, 2, 3, 4, 5];

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var li in list) {
    print(li);
  }

  int count = 0;
  while (list.length > count) {
    print(list[count]);
    count++;
  }
}