import 'package:flutter/material.dart';
import 'SplashPage/SplashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'CheckBox Project',
      home: SplashScreen(),
    );
  }
}
