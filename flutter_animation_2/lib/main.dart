import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('temp1'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.tightForFinite(),
        child: Center(
            child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              width: isOpen ? 240 : 48,
              height: 48,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.orange[100],
              ),
            ),
            Container(
              width: 40.0,
              margin: const EdgeInsets.only(left: 4.0, top: 4.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: AnimatedCrossFade(
                firstChild: IconButton(
                  onPressed: () {
                    _toggleOpen();
                  },
                  icon: Icon(CupertinoIcons.arrow_turn_up_right),
                ),
                secondChild: IconButton(
                  onPressed: () {
                    _toggleOpen();
                  },
                  icon: Icon(CupertinoIcons.add_circled),
                ),
                crossFadeState: !isOpen ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 400),
              ),
            ),
            AnimatedOpacity(
              opacity: isOpen ? 1.0 : 0.1,
              duration: const Duration(milliseconds: 400),
              child: Container(
                padding: const EdgeInsets.only(left: 44.0, top: 4.0),
                width: 240,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.hand_thumbsdown),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.heart),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.arrow_up_arrow_down),
                  ),
                ]),
              ),
            )
          ],
        )),
      ),
    );
  }

  void _toggleOpen() {
    setState(() {
      isOpen = !isOpen;
    });
  }
}
