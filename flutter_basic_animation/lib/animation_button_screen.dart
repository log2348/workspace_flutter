import 'package:flutter/material.dart';

class AnimationButtonScreen extends StatefulWidget {
  const AnimationButtonScreen({Key? key}) : super(key: key);

  @override
  State<AnimationButtonScreen> createState() => _AnimationButtonScreenState();
}

class _AnimationButtonScreenState extends State<AnimationButtonScreen> {
  double _width = 200;
  bool _isBigger = true;
  double opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animation'),
        backgroundColor: Colors.amberAccent[400],
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: 50,
          curve: Curves.easeIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.amberAccent[100]),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (_isBigger) {
                                      _width = 50;
                                      opacityValue = 0;
                                      _isBigger = false;
                                    } else {
                                      _width = 200;
                                      opacityValue = 1;
                                      _isBigger = true;
                                    }
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 150),
                    opacity: opacityValue,
                    child: Icon(
                      Icons.zoom_out,
                      color: Colors.black45,
                      size: 35,
                    ),
                  ),
                  Spacer(),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 150),
                    opacity: opacityValue,
                    child: Icon(
                      Icons.youtube_searched_for,
                      color: Colors.black45,
                      size: 35,
                    ),
                  ),
                  Spacer(),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 150),
                    opacity: opacityValue,
                    child: Icon(
                      Icons.access_alarm,
                      color: Colors.black45,
                      size: 35,
                    ),
                  ),
                  Spacer()
                ],
              ),
            ],
          ),
          duration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
