class Product {
  final String title;
  final String address;
  final String urlImage;
  final String publishedAt;
  final int price;
  final String heartCount;
  final String commentsCount;

  Product({
    required this.title,
    required this.address,
    required this.urlImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
  });
}

String _urlPrefix =
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true';

// 샘플데이터
List<Product> productList = [
  Product(
      title: '니트 조끼',
      address: '좌동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true',
      publishedAt: '2시간 전',
      price: 35000,
      heartCount: '8',
      commentsCount: '3'),
  Product(
      title: '먼나라 이웃나라 12',
      address: '중동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
      publishedAt: '3시간 전',
      price: 18000,
      heartCount: '3',
      commentsCount: '1'),
  Product(
      title: '캐나다구스 패딩조끼',
      address: '우동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_5.jpg?raw=true',
      publishedAt: '1일 전',
      price: 15000,
      heartCount: '8',
      commentsCount: '0'),
  Product(
      title: '유럽 여행',
      address: '우동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_4.jpg?raw=true',
      publishedAt: '3일 전',
      price: 15000,
      heartCount: '4',
      commentsCount: '11'),
  Product(
      title: '가죽 파우치',
      address: '우동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_3.jpg?raw=true',
      publishedAt: '1주일 전',
      price: 15000,
      heartCount: '7',
      commentsCount: '4'),
  Product(
      title: '노트북',
      address: '좌동',
      urlImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_2.jpg?raw=true',
      publishedAt: '1주일 전',
      price: 95000,
      heartCount: '8',
      commentsCount: '3'),
];
