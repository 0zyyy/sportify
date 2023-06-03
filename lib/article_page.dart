import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sportify/ui/theme.dart';
import 'package:sportify/widgets/title_text_widget.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 360,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1626003573503-2e088d82c647?crop=entropy&cs=srgb&fm=jpg&ixid=M3w3MjAxN3wwfDF8c2VhcmNofDl8fE5CQXxlbnwwfHx8fDE2ODU2MTE1ODZ8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450',
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => print("testing"),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text("Back",
                                style: AppTheme.bodyTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: AppTheme.semiBold))
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                        size: 24,
                      )
                    ],
                  ),
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
                      const TitleText(
                        text: "Phoenix Suns vs Boston Celtics",
                        textSize: 38,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Basketball",
                      style: AppTheme.bodyTextStyle.copyWith(
                          color: AppTheme.headerColor,
                          fontSize: 16,
                          fontWeight: AppTheme.semiBold),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Wed 29/11",
                      style: AppTheme.bodyTextStyle.copyWith(
                          color: AppTheme.articleColor,
                          fontSize: 16,
                          fontWeight: AppTheme.semiBold),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "8.30 PM",
                      style: AppTheme.bodyTextStyle.copyWith(
                          color: AppTheme.articleColor,
                          fontSize: 16,
                          fontWeight: AppTheme.semiBold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                    "We explored the tough decisions regarding the selection of Western Conference backcourt players looming later this month once the league officially opens voting for the 2023 NBA All-Star Game."),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                    "So, naturally, it’s time to turn attention to the Eastern Conference, which added a couple of 2022 All-Star guards from the West in Donovan Mitchell and Dejounte Murray to an already deep pool that features a total of 17 All-Star nods between two players — James Harden and Kyrie Irving — that aren’t even locks to make this year’s squad."),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 177,
                      height: 256,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1546519638-68e109498ffc?crop=entropy&cs=srgb&fm=jpg&ixid=M3w3MjAxN3wwfDF8c2VhcmNofDF8fGJhc2tldGJhbGx8ZW58MHx8fHwxNjg1NzI3Nzg5fDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 177,
                      height: 256,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1546519638-68e109498ffc?crop=entropy&cs=srgb&fm=jpg&ixid=M3w3MjAxN3wwfDF8c2VhcmNofDF8fGJhc2tldGJhbGx8ZW58MHx8fHwxNjg1NzI3Nzg5fDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
