import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/header_widget.dart';
import 'package:sportify/widgets/primary_button_widget.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                titleText: "WELCOME TO SPORTIFY",
                subtitleText:
                    "Your  Sportify ID grants you access to the exclusive offers, personalized content, and more- so you can keep being one of the best fans out there.",
                profile: true,
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              // SizedBox(height: 25,),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("MY TEAMS",style: GoogleFonts.bebasNeue(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                                )
                              ),),
                              Text("Follow your favorite teams for personalized \ncontent and recommendations.",style: GoogleFonts.bebasNeue(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF5B5757)
                                )
                              ),)
                            ],
                          ),
                          Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("MY PLAYERS",style: GoogleFonts.bebasNeue(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                  )
                              ),),
                              Text("Follow your favorite  for personalized \ncontent and recommendations",style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF5B5757)
                                  )
                              ),)
                            ],
                          ),
                          Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                      SizedBox(height: 25,),
                      TitleText(text: "OTHER OPTIONS",textColor: Colors.black,textSize: 20,),
                      InkWell(
                        onTap: (){
                          print("Yes");
                        },
                        splashColor: Colors.red,
                        child: Text(
                          "Notification"
                        ),
                      ),
                      SizedBox(height: 25,),
                      InkWell(
                        child: Text(
                            "Privacy"
                        ),
                      ),
                      SizedBox(height: 25,),
                      InkWell(
                        child: Text(
                            "Customer Support"
                        ),
                      ),
                      SizedBox(height: 25,),
                      InkWell(
                        child: Text(
                            "App Info"
                        ),
                      ),
                      SizedBox(height: 25,),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class FollowCard extends StatelessWidget {
  const FollowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: SvgPicture.asset('assets/images/chelsea.svg'),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CHELSEA',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "Football | #5 | F",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 12, color: Color(0xFF5B5757))),
                    )
                  ],
                ),
                PrimaryButton(
                  buttonColor: Color(0XFF150000),
                  text: "Follow",
                  textColor: Colors.white,
                  height: 4,
                  width: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
