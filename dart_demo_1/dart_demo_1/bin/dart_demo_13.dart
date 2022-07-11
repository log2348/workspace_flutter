class Animal {
  final String name;
  const Animal(this.name);
}

void main() {
    Animal a1 = const Animal("사자");
    // a1.name = "호랑이";

    Animal a2 = const Animal("사자");
    // const 사용하면 생성자 값 비교해서 같다면 같은 녀석으로 만들고 (싱글톤)
    // 다르다면 다른 두 개의 객체를 생성해준다/

    print(a1.hashCode); // 해시값
    print(a2.hashCode);
}