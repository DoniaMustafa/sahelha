import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({Key? key, this.color = ColorsManager.white,
    this.isColor = false,
    required this.icon,this.iconColor,this.size=20})
      : super(key: key);
  final bool isColor;
  final Color color;
  final Color? iconColor;
  final IconData icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isColor?EdgeInsets.all(5):EdgeInsets.all(0) ,
      decoration: BoxDecoration(color: isColor ? color : ColorsManager.transparent,
      borderRadius: BorderRadius.all(Radius.circular(isColor?20:0))),
        child: Icon(
          icon,
          color:iconColor,
          size: size,
        ));
  }
}
