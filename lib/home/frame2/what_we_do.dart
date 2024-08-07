import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

Padding WhatWeDo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        width: isSmallScreen(context)
            ? MediaQuery.of(context).size.width * .9
            : MediaQuery.of(context).size.width * .8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mediumeTextSize(context, "What we do?", Colors.black, false),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Wrap(
                spacing: isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .049
                    : MediaQuery.of(context).size.width * .018,
                runSpacing: MediaQuery.of(context).size.width * .05,
                children: [
                  for (int i = 0; i < textsToImages.length; i++)
                    ImageAndText(context, "images/what_we_do/image$i.png",
                        textsToImages[i]),
                ],
              ),
            ),
            isSmallScreen(context)
                ? Container()
                : Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: smallTextSize(context, TextUnderWhatWeDo,
                        Colors.black, false, TextAlign.center),
                  )
          ],
        ),
      ),
    ),
  );
}

Column ImageAndText(BuildContext context, String image, String text) {
  return Column(
    children: [
      Image.asset(
        image,
        width: isSmallScreen(context)
            ? MediaQuery.of(context).size.width * .4
            : MediaQuery.of(context).size.width * .18,
      ),
      mediumeTextSize(context, text, PurbleColor, false)
    ],
  );
}
