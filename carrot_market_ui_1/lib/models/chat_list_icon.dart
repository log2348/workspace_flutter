class ChatListIcon {
  final String profileImageUrl;
  final String username;
  final String address;
  final String sendAt;
  final String content;
  final String productImageUrl;

  ChatListIcon(
      {required this.profileImageUrl,
      required this.username,
      required this.address,
      required this.sendAt,
      required this.content,
      required this.productImageUrl});
}

// 샘플 데이터
final List<ChatListIcon> chatList = [
  ChatListIcon(
      profileImageUrl: 'https://placeimg.com/200/100/people',
      username: '당근이',
      address: '대부동',
      sendAt: '1일 전',
      content: 'developer님, 근처에 다양한 물품들이 아주 많이 있습니다.',
      productImageUrl: ''),
  ChatListIcon(
      profileImageUrl: 'https://placeimg.com/200/100/people',
      username: 'Flutter',
      address: '중동',
      sendAt: '2일 전',
      content: '안녕하세요 지금 다 예약 상태인가요?',
      productImageUrl:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true'),
];
