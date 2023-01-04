import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//^colours
const Color kPrimeryBlue = Color(0xFF2D033B);
const Color kBorder = Color(0xFFFBFACD);
const Color kCardL = Color(0xFFFEFCF3);
const Color kCardR = Color(0xFFF5EBE0);

//^fonts
TextStyle primaryFonts({Color? color}) => GoogleFonts.abrilFatface(
    fontWeight: FontWeight.w800, color: color ?? kPrimeryBlue);

//^paddings
const EdgeInsets textPadding = EdgeInsets.all(2);
