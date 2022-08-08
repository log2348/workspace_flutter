import 'package:carrot_market_ui_1/screens/my_carrot/my_carrot_screen_2.dart';
import 'package:carrot_market_ui_1/screens/near_me/near_me_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatting/chatting_screen.dart';
import 'home/home_screen.dart';
import 'my_carrot/my_carrot_screen.dart';
import 'neighborhood_life/neighborhood_life_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: [
        HomeScreen(),
        NeighborhoodLifeScreen(),
        NearMeScreen(),
        ChattingScreen(),
        MyCarrotScreen2()
      ]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_on_square),
              label: '동네 생활',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.placemark),
              label: '내 근처',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: '나의  당근',
            )
          ]),
    );
  }
}
