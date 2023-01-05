import 'package:assignment_app/constant.dart';
import 'package:flutter/material.dart';

Expanded expandBox(
  int flex,
  Widget child,
) =>
    Expanded(
      flex: flex,
      child: child,
    );

FittedBox responsiveText(String text, {Color? color, double? padding}) =>
    FittedBox(
      child: Padding(
        padding: EdgeInsets.all(padding ?? 1.0),
        child: Text(
          text,
          style: primaryFonts(color: color),
        ),
      ),
    );
