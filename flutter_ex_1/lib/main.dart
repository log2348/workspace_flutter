import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Color color = Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Welcome to Flutter"),
        ),
        body: ListView(
          // 스크롤 처리
          children: [
            Image.asset(
              "images/lake.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
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
  //Color color = Colors.red;

  Icon starIcon = Icon(
    Icons.star_border_outlined,
    color: Colors.red,
  );

  @override
  void initState() {
    //color = Colors.red;
    starIcon = Icon(
      Icons.star_border_outlined,
      color: Colors.red,
    );
  }

  void changeStar() {
    setState(() {
      //color = (color == Colors.red) ? Colors.white : Colors.red;
      starIcon =
          (starIcon == Icon(Icons.star_border_outlined, color: Colors.red))
              ? Icon(
                  Icons.star,
                  color: Colors.red,
                )
              : Icon(
                  Icons.star_border_outlined,
                  color: Colors.red,
                );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          changeStar();
        },
        child: starIcon);
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
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              "Oeschinen Lake Campground",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Kamdersteg Switzer land",
            style: TextStyle(color: Colors.grey[500]),
          ),
        ],
      )),
      MyStar(),
      const Text("41")
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //child 위젯 간의 공간을 두고, 같은 크기만큼 양 옆에 공간을 둔다.
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
    _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
    _buildButtonColumn(Colors.blue, Icons.share, "SHARE")
  ],
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);
