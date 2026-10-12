import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_screen/home_screen.dart';
import 'package:toku_app/screens/nav_screen/nav_screen.dart';
import 'package:toku_app/screens/number_screen/numbers_screen.dart';


void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NavScreen(),
    );
  }
}
