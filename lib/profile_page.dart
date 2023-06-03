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
              const HeaderComponent(
                titleText: "WELCOME TO SPORTIFY",
                subtitleText:
                    "Your  Sportify ID grants you access to the exclusive offers, personalized content, and more- so you can keep being one of the best fans out there.",
                profile: true,
              ),
              const Divider(
                height: 10,
                thickness: 1,
              ),
              // SizedBox(height: 25,),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  height: 400,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
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
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF5B5757)
                                )
                              ),)
                            ],
                          ),
                          const Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                      const SizedBox(height: 25,),
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
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF5B5757)
                                  )
                              ),)
                            ],
                          ),
                          const Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                      const SizedBox(height: 17,),
                      const TitleText(text: "OTHER OPTIONS",textColor: Colors.black,textSize: 20,),
                      InkWell(
                        onTap: (){
                          print("Yes");
                        },
                        // splashColor: Colors.red,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 8),
                          child: Text(
                            "Notification"
                          ),
                        ),
                      ),
                      const SizedBox(height: 17,),
                      InkWell(
                        onTap: (){
                          print("Privacy");
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 8),
                          child: Text(
                              "Privacy"
                          ),
                        ),
                      ),
                      const SizedBox(height: 17,),
                      InkWell(
                        onTap: (){
                          print("Customer");
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 8),
                          child: Text(
                              "Customer Support"
                          ),
                        ),
                      ),
                      const SizedBox(height: 17,),
                      InkWell(
                        onTap: (){
                          print("App Info");
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 8),
                          child: Text(
                              "App Info"
                          ),
                        ),
                      ),
                      const SizedBox(height: 17,),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
