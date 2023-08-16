import 'package:flutter/material.dart';

const kPageMargin = EdgeInsets.all(15.0);
const kCardMargin = EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0);
const kDefaultCardColor = Color(0xFF1D1E33);
const kBottomContainerMargin =  EdgeInsets.fromLTRB(5, 10, 5, 10);
const kBottomContainerColor = Color(0xFFEB1555);
const kDefaultCardTextColor = Color(0xFF8D8E98);
const kActiveCardTextColor = Color(0xFFFFFFFF);
final double deviceHeight = (WidgetsBinding.instance.window.physicalSize.height);
final roundBorder = BorderRadius.circular(10.0);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kDefaultCardTextColor,
);