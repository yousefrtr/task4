import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

Padding CostumersRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    child: Container(
      height: MediaQuery.of(context).size.width * .4,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
          ),
          Container(
              height: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .4
                  : MediaQuery.of(context).size.width * .3,
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width * .6,
              child: Image.asset(
                "images/customers/image0.png",
                fit: BoxFit.cover,
              )),
          Positioned(
            top: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .1
                : MediaQuery.of(context).size.width * .3,
            child: Container(
              color: Colors.white,
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .8
                  : MediaQuery.of(context).size.width * .4,
              height: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .25
                  : MediaQuery.of(context).size.width * .15,
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * .02),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      child: Column(
                        children: [
                          smallTextSize(context, textToCostumers, Colors.black,
                              false, TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: smallTextSize(context, "-Jeo Stanlee",
                                Colors.black, true, TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .01
                  : MediaQuery.of(context).size.width * .21,
              child: Image.asset(
                "images/customers/image2.png",
                width: MediaQuery.of(context).size.width * .11,
              )),
          Positioned(
            left: isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * .9,
            child: Container(
                height: MediaQuery.of(context).size.width * .25,
                width: MediaQuery.of(context).size.width * .4,
                child: Opacity(
                  opacity: .37,
                  child: Image.asset(
                    "images/customers/image1.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            right: isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * .9,
            child: Container(
                height: MediaQuery.of(context).size.width * .25,
                width: MediaQuery.of(context).size.width * .4,
                child: Opacity(
                  opacity: .37,
                  child: Image.asset(
                    "images/customers/image1.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}
