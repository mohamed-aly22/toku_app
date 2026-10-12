import 'package:flutter/material.dart';
import 'package:toku_app/screens/color_screen/color_screen.dart';
import 'package:toku_app/screens/family_screen/family_screen.dart';
import 'package:toku_app/screens/number_screen/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersScreen();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Color(0xffF99531),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyScreen();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: Color(0xff528032),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorScreen();
                  },
                ),
              );
            },
            text: 'Colors',
            color: Color(0xff7D40A2),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesScreen();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: Color(0xff47A5CB),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onTap;
  Category({this.text, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 80,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text!,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
