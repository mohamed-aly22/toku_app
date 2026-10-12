import 'package:flutter/material.dart';
import 'package:toku_app/components/family_item.dart';
import 'package:toku_app/components/number_item.dart';
import 'package:toku_app/models/family.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Family> familyList = [
      Family(
        image: 'assets/images/family_members/family_father.png',
        jpname: 'Chichioya',
        enName: 'father',
        sound: 'sounds/family_members/father.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_daughter.png',
        jpname: 'Musume',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_grandfather.png',
        jpname: 'Ojiisan',
        enName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_mother.png',
        jpname: 'Hahaoya',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_grandmother.png',
        jpname: 'Sobo',
        enName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_older_brother.png',
        jpname: 'Nisan',
        enName: 'older brother',
        sound: 'sounds/family_members/older brother.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_older_sister.png',
        jpname: 'Ane',
        enName: 'older sister',
        sound: 'sounds/family_members/older sister.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_son.png',
        jpname: 'Musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpname: 'Otouto',
        enName: 'younger brother',
        sound: 'sounds/family_members/younger bother.wav',
      ),
      Family(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpname: 'Imouto',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (context, index) {
          return FamilyItem(member: familyList[index]);
        },
      ),
    );
  }
}
