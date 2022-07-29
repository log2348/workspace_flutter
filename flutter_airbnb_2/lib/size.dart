import 'package:flutter/material.dart';

const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

const double header_height = 620;

double getBodyWidth(BuildContext context) {
  // MediaQuery를 사용하여 화면의 사이즈를 받을 수 있음
  // 현재 화면 크기를 받아 70%의 크기가 얼마인지 리턴
  return MediaQuery.of(context).size.width * 0.7;
}
