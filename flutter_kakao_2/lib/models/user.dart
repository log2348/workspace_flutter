class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User(
      {this.backgroundImage =
          "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me_1.jpg",
      required this.name,
      required this.intro});
} // end of user class

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

User me =
    User(backgroundImage: "${_urlPrefix}_me.jpg", name: "박지현", intro: "상태 메시지");

List<User> friends = [
  User(
      backgroundImage: "${_urlPrefix}_man_1.jpg",
      name: "주우재",
      intro: "안녕하시렵니까"),
  User(backgroundImage: "${_urlPrefix}_woman_1.jpg", name: "해쭈", intro: "츄베릅"),
  User(backgroundImage: "${_urlPrefix}_man_2.jpg", name: "나도", intro: "너도 안녕"),
  User(
      backgroundImage: "${_urlPrefix}_man_3.jpg",
      name: "뚱이",
      intro: "아뇨, 뚱인데요?"),
  User(
      backgroundImage: "${_urlPrefix}_man_4.jpg",
      name: "그루트",
      intro: "아이엠 그루트"),
  User(backgroundImage: "${_urlPrefix}_man_5.jpg", name: "토르", intro: "천둥의 신"),
  User(
      backgroundImage: "${_urlPrefix}_woman_2.jpg",
      name: "아이언맨",
      intro: "나는 아이언맨이다"),
  User(
      backgroundImage: "${_urlPrefix}_woman_3.jpg",
      name: "캡틴 아메리카",
      intro: "하루 종일도 할 수 있어"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "토니 스타크",
      intro: "나는 아이언맨이다"),
  User(
      backgroundImage: "${_urlPrefix}_woman_5.jpg",
      name: "닥터 스트레인지",
      intro: "도르마무, 거래를 하러 왔다"),
];
