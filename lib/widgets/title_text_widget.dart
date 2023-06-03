import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  const TitleText({
    super.key, required this.text,this.textColor = Colors.white,this.textSize = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: textColor
            )
        )
    );
  }
}