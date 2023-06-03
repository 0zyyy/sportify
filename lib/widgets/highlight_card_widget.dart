import 'package:flutter/material.dart';
import 'package:sportify/ui/theme.dart';
import 'package:sportify/widgets/subtitle_text_widget.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class HighlighCard extends StatelessWidget {
  const HighlighCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 16),
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(children: [
        Container(
          width: 200,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage("assets/images/highlight.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 90,
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Center(
                    child: Text(
                  "Highlights",
                  style: AppTheme.bodyTextStyle,
                ))),
            const SizedBox(
              height: 6,
            ),
            const TitleText(
              text: "PROTUGAL VS SWISS",
              textSize: 18,
              textColor: Colors.black,
            ),
            const SizedBox(
              height: 6,
            ),
            const SubtitleText(
              text: "Watch the highlights \nfrom the match between...",
              textSize: 10,
              textColor: Colors.grey,
            )
          ],
        ),
      ]),
    );
  }
}
