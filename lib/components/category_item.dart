import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;

  Category({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 80,
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(text!, style: TextStyle(fontSize: 17, color: Colors.white)),
      ),
    );
  }
}
