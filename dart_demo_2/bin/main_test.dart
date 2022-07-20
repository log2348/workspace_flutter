String? description1;
// String description1; // 불가능
String? description2 = null;
// String description2 = null; // 불가능

void main(List<String> args) {
  print(result);
}

var count = 0;
int fibonacci(int n) {
  // 리턴타입 안 적어도 실행되나, 적는 게 권장사항
  print(count);

  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2); // 재귀함수
}

var result = fibonacci(10);
