import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

Padding BlogsContainer(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: MediaQuery.of(context).size.width * .05,
    ),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: mediumeTextSize(context, "Blogs", Colors.black, false),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < blogsTitles.length; i++)
                    BuildCard(
                        context, "images/blogs/image$i.png", blogsTitles[i])
                ],
              )),
          isSmallScreen(context)
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(child: viewAll(context)),
                )
        ],
      ),
    ),
  );
}

Widget BuildCard(
  BuildContext context,
  String image,
  String title,
) {
  return Container(
    width: isSmallScreen(context)
        ? MediaQuery.of(context).size.width * .35
        : MediaQuery.of(context).size.width * .22,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .32
                : MediaQuery.of(context).size.width * .17,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: mediumeTextSize(context, title, Colors.black, false),
        ),
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .28
              : MediaQuery.of(context).size.width * .17,
          child: smallTextSize(context, TextUnderTitleBlogs, Colors.black,
              false, TextAlign.start),
        )
      ],
    ),
  );
}
