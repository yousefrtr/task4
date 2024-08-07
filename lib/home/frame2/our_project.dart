import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

import '../../consts.dart';

Padding OurProject(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isSmallScreen(context)
            ? Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .08,
                  vertical: MediaQuery.of(context).size.width * .02,
                ),
                child: mediumeTextSize(
                    context, "Our Projects", Colors.black, false),
              )
            : Container(),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * 1.1
                  : null,
              child: Stack(
                children: [
                  Container(
                    width: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .9
                        : MediaQuery.of(context).size.width * .45,
                    height: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .7
                        : MediaQuery.of(context).size.width * .4,
                    child: MasonryGridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset("images/our_project/image$index.png"),
                      ),
                    ),
                  ),
                  Positioned(
                      top: isSmallScreen(context)
                          ? MediaQuery.of(context).size.width * .7
                          : MediaQuery.of(context).size.width * .025,
                      left: isSmallScreen(context)
                          ? 0
                          : MediaQuery.of(context).size.width * .4,
                      child: Container(
                        color: ShadeWhiteColor,
                        width: isSmallScreen(context)
                            ? MediaQuery.of(context).size.width * .9
                            : MediaQuery.of(context).size.width * .5,
                        height: isSmallScreen(context)
                            ? MediaQuery.of(context).size.width * .4
                            : MediaQuery.of(context).size.width * .3,
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * .03),
                          child: Column(
                            children: [
                              isSmallScreen(context)
                                  ? Container()
                                  : Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .03),
                                      child: mediumeTextSize(context,
                                          "Our Projects", Colors.black, false),
                                    ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.width *
                                        .03),
                                child: smallTextSize(
                                    context,
                                    TextUnderOurProject1,
                                    Colors.black,
                                    false,
                                    isSmallScreen(context)
                                        ? TextAlign.left
                                        : TextAlign.center),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.width *
                                        .03),
                                child: smallTextSize(
                                    context,
                                    TextUnderOurProject2,
                                    Colors.black,
                                    false,
                                    isSmallScreen(context)
                                        ? TextAlign.left
                                        : TextAlign.center),
                              ),
                              viewAll(context)
                            ],
                          ),
                        ),
                      ))
                ],
              )),
        ),
      ],
    ),
  );
}
