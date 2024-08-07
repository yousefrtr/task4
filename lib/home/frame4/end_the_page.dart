import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';
import 'package:task4/resources.dart';

Container EndThePageSmall(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: bgAppBarcolor,
    child: Column(
      children: [
        logo(context),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: smallTextSize(context, "landinteriors@gmail.com", Colors.black,
              false, TextAlign.left),
        ),
        smallTextSize(
            context, "+91 98987 65656", Colors.black, false, TextAlign.left),
        Container(
          width: MediaQuery.of(context).size.width * .4,
          child: Row(
            children: [
              for (int i = 0; i < 5; i++)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset("images/social/image$i.png"),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container EndThePageLarge(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .1,
          top: MediaQuery.of(context).size.width * .05),
      color: bgAppBarcolor,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logo(context),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: smallTextSize(context, TextUnderThePage,
                        TextUnderPagecolor, false, TextAlign.start)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Image.asset("images/social/image$i.png"),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                  child: smallTextSize(context, "WHAT WE DO",
                      TextUnderPagecolor, true, TextAlign.left),
                ),
                for (int i = 0; i < WhatWeDolist.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: smallTextSize(context, WhatWeDolist[i],
                        TextUnderPagecolor, false, TextAlign.start),
                  ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                        child: smallTextSize(context, "Get in touch",
                            TextUnderPagecolor, true, TextAlign.left),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: smallTextSize(context, "landinteriors@gmail.com",
                            Colors.black, false, TextAlign.left),
                      ),
                      smallTextSize(context, "+91 98987 65656", Colors.black,
                          false, TextAlign.left),
                    ],
                  ),
                ),
                // TitelsButtons()
              ],
            ),
          )
        ],
      ));
}
