import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/form_field_widget.dart';
import 'package:sportify/widgets/primary_button_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool agreeTerm = false;

  void _onAgreeTerm(bool? value) => setState(() {
        agreeTerm = value!;

        if (agreeTerm) {
          // TODO:
        } else {
          // TODO:
        }
      });

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
    print(MediaQuery.of(context).size.height / 48);
    print(MediaQuery.of(context).size.width / 358);
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
                  Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    height: 246,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF5050),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/logo_white.svg',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        TitleText(
                          text: "SIGN IN WITH YOU \nSPORTIYFY ID",
                        ),
                      ],
                    ),
                  ),
                  Positioned(right: 5,bottom: 20,child: Text("JOIN",style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                      color: Colors.white30,
                      fontSize: 128
                    )
                  ),)),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          FormFieldWidget(
                            labelText: "Email",
                          ),
                          FormFieldWidget(labelText: "Password"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    PrimaryButton(
                      buttonColor: Colors.black,
                      textColor: Colors.white,
                      text: "SIGN IN",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Your Sportify account is now Sportify ID. If you’ve signed into the app before, use the same credentials here. otherwise',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 12)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("OR"),
                    SizedBox(
                      height: 16,
                    ),
                    PrimaryButton(
                        buttonColor: Colors.grey,
                        text: "SIGN UP",
                        textColor: Color(0xFF322D2D))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

