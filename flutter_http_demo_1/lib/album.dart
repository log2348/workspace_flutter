class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  // factory 타입, 팩토리 타입은 아니다
  // 싱글톤 패턴 :  한번 생성된 객체를 재활용하기 위해 사용한다.
  // 매개변수 map을 사용하여 dart object를 Album object로 변환하는 코드이다.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(json['userId'], json['id'], json['title']);
  }
}
