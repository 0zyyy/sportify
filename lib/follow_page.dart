import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sportify/login_page.dart';
import 'package:sportify/widgets/header_widget.dart';
import 'package:sportify/widgets/primary_button_widget.dart';

class FollowTeamsPage extends StatefulWidget {
  const FollowTeamsPage({Key? key}) : super(key: key);

  @override
  _FollowTeamsPageState createState() => _FollowTeamsPageState();
}

class _FollowTeamsPageState extends State<FollowTeamsPage> {
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
                titleText: "FOLLOW YOUR \nFAVORITE TEAMS",
                backgroundText: "TEAMS",
                subtitleText:
                    "Get news,game updates highlights and more info on your favorite teams",
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              Container(
                  width: double.infinity,
                  height: 529,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return FollowCard();
                      }))
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
            decoration:
                BoxDecoration(shape: BoxShape.circle),
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
                Text(
                  'CHELSEA',
                  style: GoogleFonts.inter(
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
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
