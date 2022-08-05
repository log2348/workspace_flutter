import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey[600],
          ),
        ),
      ),
      body: ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/29/09/32/concept-1868728_640.jpg"),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(
                          CupertinoIcons.camera_circle_fill,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      'developer',
                      style: textTheme().headline2,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '좌동 #00912',
                      style: textTheme().bodyText2,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  '프로필 보기',
                  style: textTheme().subtitle2,
                )),
                width: 370,
                height: 40,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  _buildIcon(CupertinoIcons.bookmark_solid, '판매내역'),
                  Spacer(),
                  _buildIcon(CupertinoIcons.bag, '구매내역'),
                  Spacer(),
                  _buildIcon(CupertinoIcons.heart, '관심목록'),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 6,
            color: Colors.grey[100],
          ),
          SizedBox(
            height: 10,
          ),
          _buildListItem(CupertinoIcons.location, '내 동네 설정'),
          _buildListItem(CupertinoIcons.house, '동네 인증하기'),
          _buildListItem(CupertinoIcons.tag, '키워드 알림'),
          _buildListItem(CupertinoIcons.archivebox, '모아보기'),
          Divider(
            thickness: 6,
            color: Colors.grey[100],
          ),
          _buildListItem(CupertinoIcons.pencil_ellipsis_rectangle, '동네생활 글'),
          _buildListItem(CupertinoIcons.reply, '동네생활 댓글'),
          _buildListItem(CupertinoIcons.star, '동네생활 주제 목록'),
        ]),
      ]),
    );
  }
}

Widget _buildListItem(IconData iconData, String titleText) {
  return ListTile(
    leading: Icon(
      iconData,
      color: Colors.black,
      size: 20,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 15),
    title: Text(
      titleText,
    ),
  );
}

Widget _buildIcon(IconData iconData, String title) {
  return Column(
    children: [
      CircleAvatar(
        radius: 23, // CIrcleAvatar 크기 조정
        backgroundColor: Colors.orange[50],
        child: Icon(
          iconData,
          color: Colors.orange[600],
          size: 25,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: textTheme().subtitle2,
      )
    ],
  );
}
