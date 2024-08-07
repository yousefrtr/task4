import 'package:flutter/material.dart';
import 'package:task4/consts.dart';

import 'package:task4/home/frame1/titles_buttons.dart';
import 'package:task4/resources.dart';

Container Header(BuildContext context) {
  return Container(
    width: double.infinity,
    color: bgAppBarcolor,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                logo(context),
                Container(
                  width: MediaQuery.sizeOf(context).width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      smallTextSize(context, "Join as Design Expert",
                          PurbleColor, false, TextAlign.left),
                      smallTextSize(context, "Partner with LAND Interiors",
                          PurbleColor, false, TextAlign.left)
                    ],
                  ),
                ),
              ],
            ),
          ),
          TitelsButtons()
        ],
      ),
    ),
  );
}
