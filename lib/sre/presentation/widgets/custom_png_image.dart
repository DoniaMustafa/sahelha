import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';

class CustomPngImage extends StatelessWidget {
  CustomPngImage(
      {Key? key,
      required this.image,
      this.isBorder = false,
      this.width = 0.0,
      this.height = 0.0,this.color=ColorsManager.purpleNavy,this.isBorderColor=false})
      : super(key: key);
  final String image;bool isBorderColor;
  bool isBorder;
  final double width;
  final double height;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:width ,
          height: height,
          padding: isBorder ?EdgeInsets.all(2.0):EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: isBorderColor?ColorsManager.transparent:color,
              border: Border.all(
                  color:isBorderColor? ColorsManager.purpleNavy:ColorsManager.transparent,
                  width: 2,
                  style: isBorder ? BorderStyle.solid : BorderStyle.none),
              borderRadius: BorderRadius.all(Radius.circular(isBorder?25:5))),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
