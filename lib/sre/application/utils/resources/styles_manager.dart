import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight,
        TextDecoration decoration, Color color) =>
    TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      color: color,
    );
TextStyle getLightStyle(
    {double fontSize = 12,
      Color color = ColorsManager.black,
      TextDecoration textDecoration = TextDecoration.none,
      double? height}) =>
    TextStyle(
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: FontWeightManager.light,
        color: color,
        fontFamily: FontConstants.fontFamily,
        height: height);

TextStyle getRegularStyle(
        {double fontSize = 12,
        Color color = ColorsManager.black,
        TextDecoration textDecoration = TextDecoration.none,
        double? height}) =>
    TextStyle(
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: FontWeightManager.regular,
        color: color,
        fontFamily: FontConstants.fontFamily,
        height: height);

TextStyle getMediumStyle({
  double fontSize = 12,
  Color color = ColorsManager.black,
  TextDecoration textDecoration = TextDecoration.none,
  double? height,
}) =>
    TextStyle(
      fontSize: fontSize,
      decoration: textDecoration,
      fontWeight: FontWeightManager.medium,
      color: color,
      fontFamily: FontConstants.fontFamily,
      overflow: TextOverflow.visible,
      height: height,
    );
TextStyle getSemiBoldStyle({
  double fontSize = 12,
  Color color = ColorsManager.black,
  TextDecoration textDecoration = TextDecoration.none,
  double? height,
 String fontFamily= FontConstants.fontFamily,
}) =>
    TextStyle(
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: FontWeightManager.semiBold,
        color: color,
        fontFamily: fontFamily,
        height: height);
TextStyle getBoldStyle({
  double fontSize = 12,
  Color color = ColorsManager.black,
  TextDecoration textDecoration = TextDecoration.none,
  double? height,
}) =>
    TextStyle(
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: FontWeightManager.bold,
        color: color,
        fontFamily: FontConstants.fontFamily,
        height: height);
