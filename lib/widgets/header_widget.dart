import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sportify/widgets/primary_button_widget.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class HeaderComponent extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  final String backgroundText;
  final bool profile;
  const HeaderComponent({
    super.key,
    required this.titleText,
    this.subtitleText = '',
    this.backgroundText = '',
    this.profile = false,
  });

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  bool isSubtitle = false;

  @override
  void initState() {
    super.initState();
    if (widget.subtitleText != '') {
      isSubtitle = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          height: 30.h,
          decoration: BoxDecoration(
            color: Color(0xFFFF5050),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/logo_white.svg',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 60,
              ),
              TitleText(
                text: widget.titleText,
              ),
              isSubtitle
                  ? SubtitleText(text: widget.subtitleText)
                  : const SizedBox(),
              SizedBox(
                height: 24,
              ),
              widget.profile
                  ? Container(
                      width: 38.w,
                      height: 5.h,
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                      decoration: BoxDecoration(color: Colors.black),
                      child: Center(
                          child: Text(
                        "SIGN IN OR JOIN",
                        style: GoogleFonts.bebasNeue(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      )),
                    )
                  : SizedBox()
            ],
          ),
        ),
        Positioned(
            right: 5,
            bottom: 20,
            child: Text(
              widget.backgroundText,
              style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(color: Colors.white30, fontSize: 128)),
            )),
      ],
    );
  }
}
