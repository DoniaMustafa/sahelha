import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';

class CustomCircleActive extends StatelessWidget {
  CustomCircleActive({this.isOnline=false, this.isUser=false});

  bool? isOnline;
  bool? isUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isUser! ? 13 : 20,
      height: isUser! ? 13 : 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color:  ColorsManager.accentGreen,
          border: Border.all(
              style: BorderStyle.solid,
              width:  isUser! ?2:3,
              color: isUser! ? ColorsManager.white :
              ColorsManager.green)),
    );
  }
}
