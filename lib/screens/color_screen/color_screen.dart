import 'package:flutter/material.dart';
import 'package:toku_app/components/color_item.dart';
import 'package:toku_app/models/color.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ColorModel> colorList = [
      ColorModel(
        image: 'assets/images/colors/color_black.png',
        jpname: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/color_brown.png',
        jpname: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/color_gray.png',
        jpname: 'Haiiro',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/color_green.png',
        jpname: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/color_red.png',
        jpname: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav',
      ),

      ColorModel(
        image: 'assets/images/colors/color_white.png',
        jpname: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/yellow.png',
        jpname: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav',
      ),
      ColorModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpname: 'Karakō',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty yellow.wav',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: Text(
          'Color Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return ColorItem(color: colorList[index]);
        },
      ),
    );
  }
}
