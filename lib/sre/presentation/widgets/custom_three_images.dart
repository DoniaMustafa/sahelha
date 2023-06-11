import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';

Widget customThreeImages(Color separatorColor)=>Stack(
  children: [
    Container(
      width: AppConstants.width * AppWidth.s14,
      height: AppConstants.height * AppHeight.s14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: separatorColor,
              width: 1
          )
      ),
      child: Image(
        image: AssetImage("assets/images_png/user.png"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 9),
      child: Container(
        width: AppConstants.width * AppWidth.s14,
        height: AppConstants.height * AppHeight.s14,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color:separatorColor,
                width: 1
            )
        ),
        child: Image(
          image: AssetImage("assets/images_png/user.png"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Container(
        width: AppConstants.width * AppWidth.s14,
        height: AppConstants.height * AppHeight.s14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: separatorColor,
                width: 1
            )
        ),
        child: Image(
          image: AssetImage("assets/images_png/user.png"),
        ),
      ),
    ),
  ],
);