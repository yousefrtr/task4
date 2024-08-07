import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/consts.dart';
import 'package:task4/data.dart';
import 'package:task4/responsive.dart';

class TitelsButtons extends StatefulWidget {
  const TitelsButtons({super.key});

  @override
  State<TitelsButtons> createState() => _TitelsButtonsState();
}

class _TitelsButtonsState extends State<TitelsButtons> {
  List<bool> _isselcted = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
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
