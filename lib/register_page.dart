import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/form_field_widget.dart';
import 'package:sportify/widgets/header_widget.dart';
import 'package:sportify/widgets/primary_button_widget.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              HeaderComponent(
                titleText: "CREATE YOUR SPOTIFY ID",
                subtitleText:
                    "Get news,game updates highlights and more info on your favorite teams",
                backgroundText: "JOIN",
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    FormFieldWidget(
                      labelText: "First Name",
                    ),
                    FormFieldWidget(
                      labelText: "Last Name",
                    ),
                    FormFieldWidget(
                      labelText: "Email",
                    ),
                    FormFieldWidget(
                      labelText: "Password",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                child: Text(
                  'Password must be at least 8 character long and include 1 capital letter and 1 symbol',
                  style: GoogleFonts.bebasNeue(),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: _onAgreeTerm),
                  Text(
                    "I agree with Terms and Services",
                    style: GoogleFonts.bebasNeue(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PrimaryButton(
                  buttonColor: Colors.black,
                  textColor: Colors.white,
                  text: "CREATE ACCOUNT",
                  height: 8,
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
