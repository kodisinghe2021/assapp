import 'package:assignment_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';




int daysCal(String deadline) {
  DateTime deadlineDate = DateTime.parse(deadline);
  DateTime currentDate = DateTime.now();

  Duration remainingDays = deadlineDate.difference(currentDate);

  return remainingDays.inDays;
}

int hourseCal(String deadline) {
  DateTime deadlineDate = DateTime.parse(deadline);
  DateTime currentDate = DateTime.now();

  Duration remainingDays = deadlineDate.difference(currentDate);

  return remainingDays.inHours % 24;
}

int minutsCal(String deadline) {
  DateTime deadlineDate = DateTime.parse(deadline);
  DateTime currentDate = DateTime.now();

  Duration remainingDays = deadlineDate.difference(currentDate);

  return remainingDays.inMinutes % 1440 % 60;
}

String currentDate() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(now);
  return formatted;
}

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
