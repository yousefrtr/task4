import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

List<bool> _isselcted = [true, false, false, false, false];

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    {
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
              Container(
                width: isLargeScreen(context)
                    ? MediaQuery.of(context).size.width * .4
                    : MediaQuery.of(context).size.width * .6,
                child: ToggleButtons(
                  borderColor: bgAppBarcolor,
                  color: bgAppBarcolor,
                  disabledBorderColor: bgAppBarcolor,
                  fillColor: bgAppBarcolor,
                  focusColor: bgAppBarcolor,
                  selectedBorderColor: bgAppBarcolor,
                  children: [
                    for (int i = 0; i < toglesbutons.length; i++)
                      ToggleButtonsContainer(toglesbutons[i], _isselcted[i])
                  ],
                  isSelected: _isselcted,
                  onPressed: (index) {
                    setState(() {
                      for (int i = 0; i < _isselcted.length; i++) {
                        _isselcted[i] = i == index;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget ToggleButtonsContainer(Title, isSelected) {
    return Container(
      padding: EdgeInsets.only(right: 50.0),
      child: Text(Title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: MediaQuery.of(context).size.width / 100,
          )),
    );
  }
}
