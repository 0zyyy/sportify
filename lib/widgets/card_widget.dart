import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class TrendingCardWidget extends StatelessWidget {
  const TrendingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: 358,
      height: 206,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1626003573503-2e088d82c647?crop=entropy&cs=srgb&fm=jpg&ixid=M3w3MjAxN3wwfDF8c2VhcmNofDl8fE5CQXxlbnwwfHx8fDE2ODU2MTE1ODZ8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xCC000000),
                    Color(0x00000000),
                    Color(0x00000000),
                    Color(0x44FF5050),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //display event name, start/end dates times and duration in a column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            width: 100,
                            height: 30,
                            padding: const EdgeInsets.all(6),
                            // color: Colors.red,
                            child: const Center(
                              child: Text(
                                "🔥Top News",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const TitleText(text: "PHOENIX SUNS VS BOSTON CELTICS"),
                      Row(
                        children: [
                          Text(
                            "Basketball",
                            style: GoogleFonts.manrope(
                                color: const Color(0xFFFF5050), fontSize: 14),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Wed 12/16",
                            style: GoogleFonts.manrope(
                                color: Colors.white, fontSize: 14),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "8:30 PM",
                            style: GoogleFonts.manrope(
                                color: Colors.white, fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
