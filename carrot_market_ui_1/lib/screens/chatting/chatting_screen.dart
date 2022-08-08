import 'package:carrot_market_ui_1/models/chat_list_icon.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView(
        children: List.generate(
          chatList.length,
          (index) => _buildChatList(chatList[index]),
        ),
      ),
    );
  }

  Widget _buildChatList(ChatListIcon chatListIcon) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(chatListIcon.profileImageUrl)),
      title: Row(
        children: [
          Text(
            chatListIcon.username,
            style: textTheme().subtitle1,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            chatListIcon.address,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Text(
            " • ",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Text(
            chatListIcon.sendAt,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
          ),
        ],
      ),
      subtitle: Container(
        width: 250,
        child: Text(
          chatListIcon.content,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textTheme().subtitle2,
        ),
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.network(
          chatListIcon.productImageUrl,
          fit: BoxFit.cover,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
