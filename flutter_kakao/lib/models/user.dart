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

// 샘플 (나)

User me = User(backgroundImage: "${_urlPrefix}_me.jpg", name: "박지현", intro: "고통 없이 얻는 건 없다");

List<User> friends = [
  User(backgroundImage: "${_urlPrefix}_woman_4.jpg", name: "정도전", intro: "앞이 보이겠습니까"),
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "홍길동", intro: "아버지라 불러도 되겠습니까"),
  User(backgroundImage: "${_urlPrefix}_woman_1.jpg", name: "박태수", intro: "고통 없이 얻는 건 없다"),
  User(backgroundImage: "${_urlPrefix}_man_2.jpg", name: "김철수", intro: "고통 없이 얻는 건 없다"),
  User(backgroundImage: "${_urlPrefix}_man_3.jpg", name: "주우재", intro: "안녕하시렵니까"),
  User(backgroundImage: "${_urlPrefix}_woman_2.jpg", name: "뚱이", intro: "아뇨, 뚱인데요?"),
  User(backgroundImage: "${_urlPrefix}_woman_3.jpg", name: "해쭈", intro: "츄베릅"),
  User(backgroundImage: "${_urlPrefix}_man_4.jpg", name: "나도", intro: "고통 없이 얻는 건 없다"),
  User(backgroundImage: "${_urlPrefix}_woman_5.jpg", name: "입짧은 햇님", intro: "고통 없이 얻는 건 없다"),
  User(backgroundImage: "${_urlPrefix}_man_5.jpg", name: "시니", intro: "고통 없이 얻는 건 없다"),
];
