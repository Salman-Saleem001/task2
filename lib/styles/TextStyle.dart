import 'package:flutter/cupertino.dart';

Text getText(
    {String? label,
    double? fontSize = 25,
    FontWeight? fontWeight = FontWeight.w400}) {
  return Text(
    label!,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
  );
}
