import 'package:flutter/material.dart';

Widget getHeadDecoration({Widget? widget}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: .5,
        ),
      ),
    ),
    child: widget,
  );
}
