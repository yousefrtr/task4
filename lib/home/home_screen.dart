import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';

import 'package:task4/home/frame1/header.dart';
import 'package:task4/home/frame1/libary_row.dart';
import 'package:task4/home/frame1/plates_row.dart';
import 'package:task4/home/frame1/why_land_interios.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSmallScreen(context)
          ? AppBar(
              title: logo(context),
            )
          : null,
      endDrawer: isSmallScreen(context) ? Drawer() : null,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isSmallScreen(context) ? Container() : header(),
                LibaryRow(context),
                WhyLandInteriors(context),
                PlatesContainer(context),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Container(
                      width: isSmallScreen(context)
                          ? MediaQuery.of(context).size.width * .9
                          : MediaQuery.of(context).size.width * .8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          mediumeTextSize(
                              context, "What we do?", Colors.black, false),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
                            child: Wrap(
                              spacing: isSmallScreen(context)
                                  ? MediaQuery.of(context).size.width * .049
                                  : MediaQuery.of(context).size.width * .018,
                              runSpacing:
                                  MediaQuery.of(context).size.width * .05,
                              children: [
                                for (int i = 0; i < textsToImages.length; i++)
                                  ImageAndText(
                                      context,
                                      "images/what_we_do/image$i.png",
                                      textsToImages[i]),
                              ],
                            ),
                          ),
                          isSmallScreen(context)
                              ? Container()
                              : Container(
                                  width: MediaQuery.of(context).size.width * .5,
                                  child: smallTextSize(
                                      context,
                                      TextUnderWhatWeDo,
                                      Colors.black,
                                      false,
                                      TextAlign.center),
                                )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
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
}
