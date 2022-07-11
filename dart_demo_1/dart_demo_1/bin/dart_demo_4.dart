void main(List<String> args) {
  BMW b = new BMW();
  print(b.power);
  print(b.wheelName);
}

class Wheel {
  String wheelName = "4륜 구동 바퀴";

}

class Engine {
  int power = 5000;
}

class BMW with Engine, Wheel {
  // Engine? engine;
  // Wheel? wheel; // 자바에서는 이렇게 컴포지션 관계로 만들었어야 했다
}

// class BMW {
//   Engine? engine;

//   BMW(this.engine)
// }