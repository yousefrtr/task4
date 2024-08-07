import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/responsive.dart';

Widget logo(BuildContext context) {
  return Container(
    width: isSmallScreen(context)
        ? MediaQuery.of(context).size.width * .07
        : MediaQuery.of(context).size.width * .05,
    child: Image.asset(
      "images/logo.png",
      fit: BoxFit.cover,
    ),
  );
}

Widget PurbleContainerButton(BuildContext context, String Text) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
      color: PurbleColor,
      child: mediumeTextSize(context, Text, Colors.white, false),
    ),
  );
}

String TextUnderWhatWeDo =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla";
String TextUnderOurProject1 =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla";
String TextUnderOurProject2 =
    " magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla";
Widget viewAll(BuildContext context) {
  return PurbleContainerButton(context, "view all");
}

String TextUnderTitleBlogs =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam,";
String TextOurProducts =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim";
String TextUnderThePage =
    "We introduce our selves as  LAND Interior and Architectural Design Consultancy – one of the best interior designers in Chennai. Chennai Luxury Interior and Architectural Design Consultancy has challenged the conventional way of interior designing and given new dimensions to the art of interior designing.";

String textToCostumers =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor";
