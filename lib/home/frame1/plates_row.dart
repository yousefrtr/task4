import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/responsive.dart';

Padding PlatesContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      width: double.infinity,
      child: Stack(
        alignment: isSmallScreen(context)
            ? Alignment.centerLeft
            : Alignment.centerRight,
        children: [
          Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * .8,
            height: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .6
                : MediaQuery.of(context).size.width * .4,
            child: Image.asset(
              "images/plates.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: isSmallScreen(context)
                ? null
                : MediaQuery.of(context).size.width * .7,
            top: isSmallScreen(context)
                ? null
                : MediaQuery.of(context).size.width * .01,
            bottom: isSmallScreen(context)
                ? null
                : MediaQuery.of(context).size.width * .01,
            child: Container(
              color: ShadeWhiteColor,
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .5
                  : MediaQuery.of(context).size.width * .3,
              height: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .6
                  : MediaQuery.of(context).size.width * .4,
              child: Padding(
                padding: EdgeInsets.only(
                    top: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .05
                        : MediaQuery.of(context).size.width * .02,
                    left: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .1
                        : 0),
                child: Column(
                  crossAxisAlignment: isSmallScreen(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * .03,
                      ),
                      child: Column(
                        crossAxisAlignment: isSmallScreen(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          mediumeTextSize(
                              context,
                              "Make your dream interior in",
                              Colors.black,
                              false),
                          mediumeTextSize(
                              context, "3 easy steps", Colors.black, true),
                        ],
                      ),
                    ),
                    TitleAndTowStat(
                        context,
                        "Explore",
                        "Explore more than just modular design ",
                        "ideas with our experts."),
                    TitleAndTowStat(
                        context,
                        "Design",
                        "Complete the designs with painting, flooring",
                        " and other decor solutions"),
                    TitleAndTowStat(
                        context,
                        "Move-in",
                        "Move in with ease, with our hassle-free civil work ",
                        "and installation services."),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Padding TitleAndTowStat(
    BuildContext context, String Title, String statemant1, String statemant2) {
  return Padding(
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * .03),
    child: Column(
      crossAxisAlignment: isSmallScreen(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        mediumeTextSize(context, Title, PurbleColor, true),
        smallTextSize(context, statemant1, Colors.black, true, TextAlign.left),
        smallTextSize(context, statemant2, Colors.black, true, TextAlign.left),
      ],
    ),
  );
}
