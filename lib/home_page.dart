import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/primary_button_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/background.svg',
                    width: double.infinity,
                    height: 458,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 360, left: 17),
                    child: Text(
                      'keep an eye on the stadium',
                      style: GoogleFonts.bebasNeue(
                          textStyle: TextStyle(
                              fontSize: 64, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 17,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 120,
                        height: 48,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(17, 0, 17, 5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {},
                  child: Text(
                    'Watch sports live or highlights, read every news from your smartphone',
                    style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                      fontSize: 16,
                    )),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              PrimaryButton(buttonColor: Color(0xFFFF5050),text: "Login",textColor: Colors.white,),
              SizedBox(height: 5,),
              PrimaryButton(buttonColor: Colors.grey,text: "Create Account",textColor: Colors.black,),
              SizedBox(height: 20,)
              // Container(
              //   width: 358,
              //   height: 48,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.white, width: 1),
              //       color: Color(0xFF57636C)),
              //   child: Text(
              //     "Create Account",
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
