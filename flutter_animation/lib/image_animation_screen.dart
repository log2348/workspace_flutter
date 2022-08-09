import 'package:flutter/material.dart';

class ImageAnimationScreen extends StatelessWidget {
  const ImageAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implict Animation'),
        backgroundColor: Colors.grey,
      ),
      body: FadeImage(),
    );
  }
}

class FadeImage extends StatefulWidget {
  const FadeImage({Key? key}) : super(key: key);

  @override
  State<FadeImage> createState() => _FadeImageState();
}

class _FadeImageState extends State<FadeImage> {
  double _opacityValue = 1.0;
  bool _isClear = true;
  String _imageUrl =
      "https://cdn.pixabay.com/photo/2018/08/12/15/29/hintersee-3601004_960_720.jpg";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: _opacityValue,
        duration: const Duration(milliseconds: 200),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(_imageUrl), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    if (_isClear) {
                      _opacityValue = 0.1;
                      _isClear = false;
                    } else {
                      _opacityValue = 1.0;
                      _isClear = true;
                    }
                  });
                },
                child: const Text(
                  'START',
                  style: TextStyle(fontSize: 20),
                ))
          ]),
        ),
      ),
    );
  }
}
