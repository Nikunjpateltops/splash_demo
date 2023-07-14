import 'package:flutter/material.dart';

class MediaQueryRes {
  static double h = 0;
  static double w = 0;

  static void onInit(BuildContext context) {
    h = MediaQuery.of(context).size.height / 100;
    w = MediaQuery.of(context).size.width / 100;
  }
}
