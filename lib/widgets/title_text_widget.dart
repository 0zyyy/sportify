import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        )
    );
  }
}