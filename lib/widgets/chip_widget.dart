//Add this CustomPaint widget to the Widget Tree
import 'package:flutter/material.dart';
import 'package:sportify/ui/theme.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(left: 10),
      child: CustomPaint(
        size: Size(
            108,
            (108 * 0.1340782122905028)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(Colors.black),
        child: Center(
          child: Text(
            "🔥 Trending",
            style: AppTheme.bodyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: AppTheme.semiBold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  final Color buttonColor;

  RPSCustomPainter(this.buttonColor);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.07407407, 0);
    path_0.lineTo(0, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.07407407, size.height);
    path_0.lineTo(size.width * 0.07407407, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff150000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff150000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.07407407, 0, size.width * 0.8518519, size.height),
        paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9259259, 0);
    path_2.lineTo(size.width, size.height * 0.5000000);
    path_2.lineTo(size.width * 0.9259259, size.height);
    path_2.lineTo(size.width * 0.9259259, 0);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff150000).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
