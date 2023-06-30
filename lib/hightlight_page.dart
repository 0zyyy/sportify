import 'package:flutter/material.dart';
import 'package:sportify/dashboard_page.dart';
import 'package:sportify/ui/theme.dart';
import 'package:sportify/widgets/chip_widget.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class HighlightPage extends StatelessWidget {
  const HighlightPage({super.key});

  Widget featuredMatchCard() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    Widget featuredMatchCard() {
      return Container(
        width: 357,
        height: 171,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 357,
              height: 163,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/357x163"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Highlights",
                      style: AppTheme.bodyTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: AppTheme.bold)),
                  const ChipWidget(
                    width: 122,
                    height: 35,
                    text: "Football",
                    buttonColor: AppTheme.headerColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 160,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const LeagueCard(),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(17),
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            height: 208,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Center(child: Text("Video")),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const TitleText(
                            text: "KEEP EYE ON THE STADIUM",
                            textColor: Colors.black,
                          ),
                          Text(
                            "Watch sports live or highlights, \nread every news from your smartphone",
                            style: AppTheme.bodyTextStyle,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
              const SectionTitle(text: "FEATURED MATCHES"),
              featuredMatchCard()
            ],
          ),
        ),
      ),
    );
  }
}
