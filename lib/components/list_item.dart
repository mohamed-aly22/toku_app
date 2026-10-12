import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';
import 'package:toku_app/models/item.dart';
import 'package:toku_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Color(0xff47A5CB),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(item.image!),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.entext,

                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.jbtext,
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
              player.play(AssetSource(item.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
