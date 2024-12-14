import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle boldTextStyle(
    {required double fontSize,
    Color? color,
    TextDecoration? decoration,
    Color? decorationcolor}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationColor: decorationcolor,
      fontWeight: FontWeight.bold);
}

TextStyle normalTextStyle(
    {required double fontSize,
    Color? color,
    TextDecoration? decoration,
    Color? decorationcolor}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationColor: decorationcolor);
}

TextStyle mediumTextStyle(
    {required double fontSize,
    Color? color,
    TextDecoration? decoration,
    Color? decorationcolor}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationColor: decorationcolor,
      fontWeight: FontWeight.w500);
}
