import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';
import 'package:toku_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrase.dart';

class PhraesItem extends StatelessWidget {
  const PhraesItem({super.key, required this.phrase});
  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Color(0xff47A5CB),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.enText,

                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  phrase.jbText,
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
              player.play(AssetSource(phrase.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
