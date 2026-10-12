import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Numbers number;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      color: Color(0xffF99531),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,

                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            splashColor: Colors.white,
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
