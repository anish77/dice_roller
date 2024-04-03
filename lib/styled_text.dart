import 'package:flutter/material.dart';



class StyleText extends StatelessWidget {
   const StyleText(this.text, this.color, {super.key});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style:  TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color
      ),
    );
  }
}
