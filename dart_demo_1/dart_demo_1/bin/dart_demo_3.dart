void main(List<String> args) {
  
  ChesseBuger ch = ChesseBuger("치즈버거");
  print(ch.name);
} // end of main

class Burger {
  final String? name;

  Burger(this.name) { // 부모 생성자

  }
}

class ChesseBuger extends Burger {
  ChesseBuger(String name) : super(name); // 부모에 final 변수가 있으면 초기화를 보장해야 하기 때문에 반드시 : 쓴다
}