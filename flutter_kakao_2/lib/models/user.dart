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

User me = User(backgroundImage: "${_urlPrefix}_me.jpg", name: "박지현", intro: "상태 메시지");

List<User> friends = [
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
];
