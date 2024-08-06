import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task4/consts.dart';

import 'package:task4/responsive.dart';

Padding WhyLandInteriors(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .9
              : MediaQuery.of(context).size.width * .6,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: mediumeTextSize(
                    context, "Why LAND Interiors", Colors.black, true),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(true, "images/bi_calendar.svg",
                      "50 days or we pay you rent"),
                  IconText(
                      false, "images/home-smile.svg", "1500+happy customers"),
                  IconText(false, "images/degree.svg", "300+ design experties")
                ],
              ),
            ],
          )),
    ),
  );
}

Column IconText(bool isCalender, String image, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      isCalender
          ? Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.calendar_today,
                  color: PurbleColor,
                  size: 50,
                ),
                SvgPicture.asset(image)
              ],
            )
          : SvgPicture.asset(
              image,
              width: 50,
              height: 50,
            ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
            width: 100,
            child: Text(
              text,
              textAlign: TextAlign.center,
            )),
      )
    ],
  );
}
