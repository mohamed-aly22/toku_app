import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});
  final ColorModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      color: Color(0xff7D40A2),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  color.jpname,

                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  color.enName,
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
              player.play(AssetSource(color.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
