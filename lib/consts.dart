import 'package:flutter/material.dart';
import 'package:task4/responsive.dart';

Color bgAppBarcolor = Color(0xFFF8F8F8);
Color PurbleColor = Color(0xFF451A64);
Color ShadeWhiteColor = Color.fromRGBO(255, 255, 255, 0.82);
Color TextUnderPagecolor = Color.fromRGBO(61, 61, 61, 1.0);

Text smallTextSize(BuildContext context, String TheText, Color color,
    bool IsBold, TextAlign TextAlign) {
  return Text(
    TheText,
    style: TextStyle(
      color: color,
      fontSize: isSmallScreen(context)
          ? MediaQuery.of(context).size.width / 60
          : MediaQuery.of(context).size.width / 100,
      fontWeight: IsBold ? FontWeight.bold : null,
    ),
    textAlign: TextAlign,
  );
}

Text smallTextSize2(BuildContext context, String TheText, Color color,
    bool IsBold, TextAlign TextAlign) {
  return Text(
    TheText,
    style: TextStyle(
      color: color,
      fontSize: isSmallScreen(context)
          ? MediaQuery.of(context).size.width / 40
          : MediaQuery.of(context).size.width / 100,
      fontWeight: IsBold ? FontWeight.bold : null,
    ),
    textAlign: TextAlign,
  );
}

Text mediumeTextSize(
    BuildContext context, String TheText, Color color, bool IsBold) {
  return Text(TheText,
      style: TextStyle(
        color: color,
        fontSize: isSmallScreen(context)
            ? MediaQuery.of(context).size.width / 35
            : MediaQuery.of(context).size.width / 60,
        fontWeight: IsBold ? FontWeight.bold : null,
      ));
}
