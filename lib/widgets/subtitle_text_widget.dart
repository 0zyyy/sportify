import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  const SubtitleText({
    super.key,
    required this.text,
    this.textSize = 14,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: textSize,
                color: textColor,
                fontWeight: FontWeight.w600)));
  }
}
