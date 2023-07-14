import 'package:flash_navigation_ui_project/SplashPage/SPlashController.dart';
import 'package:flutter/material.dart';

Widget splashBody() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          splashContainer(),
          sizeBoxForSplash(),
          splashForFirstRow(),
          sizeBoxForSplash(),
          splashForSecondRow()
        ],
      ),
    ),
  );
}
