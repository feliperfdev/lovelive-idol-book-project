import 'package:flutter/material.dart';

class IdolText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const IdolText(
    this.text, {
    Key? key,
    this.color = Colors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color,
        fontFamily: "Cascadia",
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
