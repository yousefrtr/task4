import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:task4/home/frame4/costumers_row.dart';

import 'package:task4/home/frame3/blogs.dart';

import 'package:task4/home/frame4/end_the_page.dart';

import 'package:task4/home/frame1/header.dart';
import 'package:task4/home/frame1/libary_row.dart';
import 'package:task4/home/frame1/plates_row.dart';

import 'package:task4/home/frame1/why_land_interios.dart';
import 'package:task4/home/frame2/our_project.dart';
import 'package:task4/home/frame2/what_we_do.dart';
import 'package:task4/home/frame3/our_Products.dart';
import 'package:task4/resources.dart';
import 'package:task4/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSmallScreen(context)
          ? AppBar(
              title: logo(context),
            )
          : null,
      endDrawer: isSmallScreen(context) ? Drawer() : null,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isSmallScreen(context) ? Container() : Header(context),
                LibaryRow(context),
                WhyLandInteriors(context),
                PlatesContainer(context),
                WhatWeDo(context),
                OurProject(context),
                BlogsContainer(context),
                OurProductsContainer(context),
                CostumersRow(context),
                isLargeScreen(context)
                    ? EndThePageLarge(context)
                    : EndThePageSmall(context),
              ],
            )),
      ),
    );
  }
}
