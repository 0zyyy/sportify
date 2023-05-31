import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  const SubtitleText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
              fontWeight: FontWeight.w600
            )
        )
    );
  }
}