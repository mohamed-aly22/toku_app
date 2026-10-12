import 'package:flutter/material.dart';
import 'package:toku_app/screens/color_screen/color_screen.dart';
import 'package:toku_app/screens/family_screen/family_screen.dart';
import 'package:toku_app/screens/home_screen/home_screen.dart';
import 'package:toku_app/screens/number_screen/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen/phrases_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NavScreen> {
  int selectedindex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    NumbersScreen(),
    FamilyScreen(),
    ColorScreen(),

    PhrasesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff49332A),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Color(0xff49332A), fontSize: 20),
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers, size: 30),
            label: 'Number',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.family_restroom, size: 30),
            label: 'Family',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens, size: 30),
            label: 'Colors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wordpress_rounded, size: 30),
            label: 'Phrases',
          ),
        ],
      ),
    );
  }
}
