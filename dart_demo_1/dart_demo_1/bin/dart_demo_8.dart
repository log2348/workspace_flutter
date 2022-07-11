import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {};

  // Random 클래스 사용
  Random random = Random();
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);

  print(lotto);

  // Dart는 자바에 없는 편리한 기능들을 많이 제공하고 있다.
  List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList);
}