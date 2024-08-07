import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task4/consts.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

Padding OurProductsContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 25.0),
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        child: Column(
          crossAxisAlignment: isSmallScreen(context)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            mediumeTextSize(
                context, "Our Interior Design Products", Colors.black, false),
            Row(
              children: [
                ThePictuers(context, 1),
                isSmallScreen(context) ? Container() : ThePictuers(context, 2),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                  width: isSmallScreen(context)
                      ? MediaQuery.of(context).size.width * .75
                      : MediaQuery.of(context).size.width * .31,
                  child: smallTextSize2(
                      context,
                      TextOurProducts,
                      Colors.black,
                      false,
                      isSmallScreen(context)
                          ? TextAlign.start
                          : TextAlign.center)),
            ),
            viewAll(context)
          ],
        ),
      ),
    ),
  );
}

Container ThePictuers(BuildContext context, int NumFolder) {
  return Container(
    width: isSmallScreen(context)
        ? MediaQuery.of(context).size.width * .8
        : MediaQuery.of(context).size.width * .4,
    height: isSmallScreen(context)
        ? MediaQuery.of(context).size.width * .7
        : MediaQuery.of(context).size.width * .34,
    child: MasonryGridView.builder(
      itemCount: 3,
      shrinkWrap: true,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: index == 0 || index == 2
                ? isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .3
                    : MediaQuery.of(context).size.width * .15
                : isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .6
                    : MediaQuery.of(context).size.width * .3,
            child: Image.asset(
              "images/our_products/$NumFolder/image$index.png",
              fit: BoxFit.cover,
            ),
          )),
    ),
  );
}
