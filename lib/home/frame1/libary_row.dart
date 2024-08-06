import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/resources.dart';

import 'package:task4/responsive.dart';

Padding LibaryRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * .6,
            height: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .5
                : MediaQuery.of(context).size.width * .3,
            child: Image.asset(
              "images/Libary.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .25
                : MediaQuery.of(context).size.width * .1,
            left: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .05
                : MediaQuery.of(context).size.width * .53,
            right: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .05
                : null,
            child: Container(
              padding: EdgeInsets.all(20),
              color: ShadeWhiteColor,
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width * .5,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * .03),
                    child: Container(
                      child: Column(
                        children: [
                          mediumeTextSize(
                              context,
                              "Get personalised home interiors",
                              Colors.black,
                              false),
                          mediumeTextSize(
                              context, "in just 50 days", Colors.black, true),
                        ],
                      ),
                    ),
                  ),
                  PurbleContainerButton(
                      context, "SPEAK WITH A ONLINE CONSULTANT")
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
