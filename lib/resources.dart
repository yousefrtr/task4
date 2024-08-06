import 'package:flutter/material.dart';
import 'package:task4/consts.dart';

Widget logo(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * .05,
    child: Image.asset(
      "images/logo.png",
      fit: BoxFit.cover,
    ),
  );
}

Container PurbleContainerButton(BuildContext context, String Text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
    color: PurbleColor,
    child: mediumeTextSize(context, Text, Colors.white, false),
  );
}

String TextUnderWhatWeDo =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla";
