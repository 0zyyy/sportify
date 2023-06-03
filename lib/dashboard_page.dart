import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/ui/theme.dart';
import 'package:sportify/widgets/card_widget.dart';
import 'package:sportify/widgets/form_field_widget.dart';
import 'package:sportify/widgets/highlight_card_widget.dart';
import 'package:sportify/widgets/primary_button_widget.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget SearchBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        obscureText: false,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Color(0xFFF4F4F4),
          labelText: "Teams, Sports, or Venue",
          labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
        ),
      ),
    );
  }

  Widget ChipsSection() {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: 35,
      child: ListView.builder(
        // physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PrimaryButton(
            width: 85,
            buttonColor: Colors.black,
            text: "🔥Trending",
            textSize: 14,
            textColor: Colors.white),
        itemCount: 5,
        // ChipHeader(),
        // ChipHeader(),
        // ChipHeader(),
        // ChipHeader(),
        // ChipHeader(),
        // ChipHeader(),
        // ],
      ),
    );
  }

  Widget ChipHeader() {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.all(8),
      width: 10,
      decoration: const BoxDecoration(color: AppTheme.buttonColor),
      child: Center(
        child: Text("🔥Trending",
            style: GoogleFonts.manrope(
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
      ),
    );
  }

  Widget trendingCards() {
    return Container(
      width: 450,
      height: 300,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const MyWidget();
        },
        itemCount: 4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.2;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppTheme.backgroundColor2,
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: AppTheme.backgroundColor2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: 120,
                    height: 48,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Icon(
                  Icons.notifications,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: const EdgeInsets.all(16),
                child: FormFieldWidget(labelText: "Teams, Sports, or Venue")),
            ChipsSection(),
            SizedBox(
              // width: 358,
              height: 206,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const MyWidget(),
                itemCount: 4,
              ),
            ),
            const SectionTitle(text: "FIFA WORLD CUP"),
            Container(
              height: 140,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const HighlighCard(),
                itemCount: 4,
              ),
            ),
            const SectionTitle(text: "ALL LEAGUES"),
            SizedBox(
              height: 160,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const LeagueCard(),
                itemCount: 5,
              ),
            ),
            const SectionTitle(text: "POPULAR LEAGUES"),
            GridView.count(
              childAspectRatio: (itemWidth / itemHeight),
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List.generate(4, (index) {
                return Container(
                    margin:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 214,
                    width: 171,
                    color: Colors.white,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 125,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/goal.png'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Qatar World Cup 2022",
                          style: AppTheme.subtitleTextStyle.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: AppTheme.medium),
                        ),
                        Text("Best of Portugal goals against Switzerland",
                            textAlign: TextAlign.center,
                            style: AppTheme.subtitleTextStyle.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: AppTheme.semiBold))
                      ],
                    ));
              }),
            )
          ],
        ),
      ),
    ));
  }
}

class LeagueCard extends StatelessWidget {
  const LeagueCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 8),
      width: 80,
      height: 150,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey,
              child: ClipRRect(
                  child: Image.asset(
                'assets/images/epl.png',
                width: 48,
              ))),
          const SubtitleText(text: "Premiere League", textColor: Colors.black)
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(
            text: text,
            textColor: Colors.black,
          ),
          const Row(
            children: [
              SubtitleText(text: "View All", textColor: AppTheme.headerColor),
              Icon(Icons.chevron_right_rounded, color: AppTheme.headerColor)
            ],
          ),
        ],
      ),
    );
  }
}
