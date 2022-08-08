import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('동네생활'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 13,
          ),
          Icon(Icons.card_giftcard),
          SizedBox(
            width: 13,
          ),
          Icon(Icons.alarm_add_outlined),
          SizedBox(
            width: 13,
          ),
        ],
        bottom: PreferredSize(
            child: Divider(thickness: 0.7, color: Colors.grey[300], height: 0.5),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.zero,
            elevation: 0.5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://placeimg.com/200/100/people",
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 320,
                  child: Text(
                    '이웃과 함꼐 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요',
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.zero,
            elevation: 0.5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        '우리동네질문',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        '3시간 전',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage("https://placeimg.com/200/100/people"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '헬로비비',
                        style: textTheme().subtitle1,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '좌동 인증 3회',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                      '예민한 개도 미용할 수 있는 곳이나 동물병원 어디 있을까요? 내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    image: NetworkImage('https://placeimg.com/200/100/people'),
                    width: 370,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[300],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.face,
                          color: Colors.grey,
                        )),
                    Text('공감하기'),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey,
                        )),
                    Text('댓글쓰기'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('11')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
