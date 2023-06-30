import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sportify/ui/theme.dart';

class PrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color textColor;
  final double textSize;
  double? width;
  double? height;
  PrimaryButton(
      {super.key,
      required this.buttonColor,
      required this.text,
      required this.textColor,
      this.width = 400,
      this.height,
      this.textSize = 20});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: EdgeInsets.all(8),
    //   margin: EdgeInsets.only(left: 17, right: 17),
    //   width: width?.w,
    //   height: height?.h,
    //   decoration: BoxDecoration(color: buttonColor),
    //   child: Center(
    //       child: Text(
    //     text,
    //     style: GoogleFonts.bebasNeue(
    //         textStyle: TextStyle(fontSize: 20, color: textColor)),
    //   )),
    // );
    // height 0.1340782122905028
    return Container(
      width: width!,
      margin: EdgeInsets.only(left: 10),
      child: CustomPaint(
        size: Size(
            width!,
            (width! * 0.1340782122905028)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(buttonColor),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: AppTheme.buttonTextStyle.copyWith(fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color buttonColor;

  RPSCustomPainter(this.buttonColor);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.03631285, 0);
    path_0.lineTo(0, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.03631285, size.height);
    path_0.lineTo(size.width * 0.03631285, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = buttonColor.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = buttonColor.withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.03631285, 0, size.width * 0.9273743, size.height),
        paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9636872, 0);
    path_2.lineTo(size.width, size.height * 0.5000000);
    path_2.lineTo(size.width * 0.9636872, size.height);
    path_2.lineTo(size.width * 0.9636872, 0);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = buttonColor.withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
