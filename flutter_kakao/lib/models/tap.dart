import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tap {
  final IconData icon;
  final String text;

  Tap({required this.icon, required this.text});
}

List<Tap> taps = [
  Tap(icon: FontAwesomeIcons.envelope, text: "메일"),
  Tap(icon: FontAwesomeIcons.calendar, text: "캘린더"),
  Tap(icon: FontAwesomeIcons.archive, text: "서랍"),
  Tap(icon: FontAwesomeIcons.gift, text: "선물하기"),
  Tap(icon: FontAwesomeIcons.laugh, text: "이모티콘"),
  Tap(icon: FontAwesomeIcons.shoppingBag, text: "쇼핑"),
  Tap(icon: FontAwesomeIcons.airbnb, text: "스타일"),
];
