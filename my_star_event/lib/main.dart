import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Study',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          elevation: 0.0,
          title: const Text("탭 이벤트 처리 연습"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/tree.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
          ],
        ),
      ),
    );
  }
}

class MyStar extends StatefulWidget {
  const MyStar({Key? key}) : super(key: key);

  @override
  State<MyStar> createState() => _MyStarState();
}

class _MyStarState extends State<MyStar> {
  bool isFavorite = false;
  int favoriteCount = 0;

/*
  @override
  void initState() {
    isFavorite = false;
  }
  */

  void _toggleStar() {
    setState(() {
      if (isFavorite) {
        // 즐겨찾기 한 상태
        //favoriteCount--;
        isFavorite = false;
      } else {
        // 즐겨찾기 안 한 상태(별이 비어있을 때)
        //favoriteCount++;
        isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _toggleStar();
      },
      child: Icon(
        isFavorite ? Icons.star : Icons.star_border_outlined,
        color: Colors.red,
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: const Text(
                "Title",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "SubTitle",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
          ],
        ),
      ),
      MyStar(),
      //Text("$favoriteCount")
    ],
  ),
);
