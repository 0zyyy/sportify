import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color textColor;
  const PrimaryButton({
    super.key, required this.buttonColor, required this.text, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 17,right: 17),
      width: MediaQuery.of(context).size.width / 1.149,
      height: MediaQuery.of(context).size.height  / 14.23,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          color: buttonColor),
      child: Center(
          child: Text(
            text,
            style: GoogleFonts.bebasNeue(
                textStyle: TextStyle(
                    fontSize: 20,
                    color: textColor)),
          )),
    );
  }
}

class ClipButtonClass extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(size.width * 0.15, 0);
    path1.lineTo(0, size.height * 0.7);
    path1.lineTo(size.width * 0.15, size.height);
    path1.lineTo(size.width * 0.15, 0);
    path1.close();
    Path path2 = Path();
    path2.moveTo(size.width - (size.width * 0.15), 0);
    path2.lineTo(size.width, size.height / 2);
    path2.lineTo(size.width - (size.width * 0.15), size.width);
    path2.lineTo(size.width - (size.width * 0.15), 0);
    // path1.lineTo(size.width - (size.width * 0.15), size.height);
    // path1.lineTo(size.width, size.height * 0.7);
    // path1.lineTo(size.width - (size.width * 0.15), 0);
    path2.close();
    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}