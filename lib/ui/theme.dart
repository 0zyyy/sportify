import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Color theme
  static const Color primaryColor = Color(0xFF0D0D0D);
  static const Color buttonColor = Color(0xFF150000);
  static const Color backgroundColor = Color(0xFFF4F4F4);
  static const Color backgroundColor2 = Color(0xFFFAFAFA);
  static const Color headerColor = Color(0xFFFF5050);

  // TextStyle
  static TextStyle titleTextStyle = GoogleFonts.bebasNeue(
      textStyle: const TextStyle(
    fontSize: 24,
    fontWeight: bold,
    color: primaryColor,
  ));
  static TextStyle subtitleTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: medium,
    color: primaryColor,
  ));
  static TextStyle bodyTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: regular,
    color: primaryColor,
  ));

  static TextStyle captionTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: light,
    color: primaryColor,
  ));

  static TextStyle buttonTextStyle = GoogleFonts.bebasNeue(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: medium,
    color: Colors.white,
  ));

  // Font Weight
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}
