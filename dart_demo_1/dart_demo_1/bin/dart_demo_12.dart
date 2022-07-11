import 'dart:math';

void main(List<String> args) {
  var list = [1, 2, 3];
  var newList1 = list; // 얕은복사
  var newList2 = [...list];

  print(list);
  print(newList1);
  print(newList2);

  newList1[0] = 1000;
  newList2[0] = 500;
  print(list);
  print(newList1);
  print(newList2);
}