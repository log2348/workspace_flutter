import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/screens/chat_room_screen.dart';

import '../models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatRoomScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(chat.image),
              ),
              title: Text(
                chat.title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: Text(chat.content),
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
          Column(
            children: [
              Text(
                chat.time,
                style: TextStyle(color: Colors.grey[400], fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              if (chat.count != 0)
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent),
                    child: Text(
                      chat.count,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
            ],
          )
        ]),
      ),
    );
  }
}