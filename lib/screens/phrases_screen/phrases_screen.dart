import 'package:flutter/material.dart';
import 'package:toku_app/components/color_item.dart';
import 'package:toku_app/components/phraes_item.dart';
import 'package:toku_app/models/color.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Phrase> phraseList = [
      Phrase(
        enText: 'Are you coming?',
        jbText: 'Kimasu ka?',
        sound: 'sounds/phrases/are_you_coming.wav',
      ),
      Phrase(
        enText: 'Don\'t forget to study.',
        jbText: 'Benkyou suru no o wasurenaide kudasai.',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      ),
      Phrase(
        enText: 'How are you feeling?',
        jbText: 'Kibun wa dou desu ka?',
        sound: 'sounds/phrases/how_are_you_feeling.wav',
      ),
      Phrase(
        enText: 'I love anime.',
        jbText: 'Watashi wa anime ga daisuki desu.',
        sound: 'sounds/phrases/i_love_anime.wav',
      ),
      Phrase(
        enText: 'I love programming.',
        jbText: 'Watashi wa puroguramingu ga daisuki desu.',
        sound: 'sounds/phrases/i_love_programming.wav',
      ),
      Phrase(
        enText: 'Programming is interesting.',
        jbText: 'Puroguramingu wa omoshiroi desu.',
        sound: 'sounds/phrases/programming_is_easy.wav',
      ),
      Phrase(
        enText: 'What is your name?',
        jbText: 'Anata no namae wa nan desu ka?',
        sound: 'sounds/phrases/what_is_your_name.wav',
      ),
      Phrase(
        enText: 'Where are you going?',
        jbText: 'Doko e ikimasu ka?',
        sound: 'sounds/phrases/where_are_you_going.wav',
      ),
      Phrase(
        enText: 'Yes, I\'m coming.',
        jbText: 'Hai, ikimasu.',
        sound: 'sounds/phrases/yes_im_coming.wav',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: phraseList.length,
        itemBuilder: (context, index) {
          return PhraesItem(phrase: phraseList[index]);
        },
      ),
    );
  }
}
