import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/components/my_chat.dart';
import 'package:flutter_kakao_2/components/other_chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/time_line.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            '주우재',
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              FontAwesomeIcons.bars,
              size: 20,
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: [
                  TimeLine(time: "2022년 8월 3일 수요일"),
                  OtherChat(
                    name: '주우재',
                    text: '복 많이 받으세요',
                    time: '오전 12:15',
                  ),
                  MyChat(
                    text: '복 많이 받으세요',
                    time: '오전 12:30',
                  ),
                  ...List.generate(chats.length, (index) => chats[index]),
                ]),
              ),
            ),
          ),
          Container(
            child: Row(children: []),
          )
        ]),
      ),
    );
  }
}
