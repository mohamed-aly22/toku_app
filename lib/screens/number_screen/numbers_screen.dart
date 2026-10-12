import 'package:flutter/material.dart';
import 'package:toku_app/components/number_item.dart';
import 'package:toku_app/models/number.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});
  final List<Numbers> numberslist = const [
    Numbers(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'ruku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'sebun',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ju',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: numberslist.length,
        itemBuilder: (context, index) {
          return Item(number: numberslist[index]);
        },
      ),
    );
  }
}
