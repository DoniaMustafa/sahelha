import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomCircle extends StatelessWidget {
  CustomCircle(
      {Key? key,
       this.borderColor ,
      this.isBorder = false,
      required this.image,
      this.height = 10,
      this.width = 10})
      : super(key: key);
  final Color? borderColor ;
  final bool isBorder;
  final String image;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      // width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        border: isBorder
            ? Border.all(style: BorderStyle.none)
            : Border.all(
                width: 2, style: BorderStyle.solid, color: borderColor!),
      ),
      child: CustomSVGImage(
        image: image,
        height: height,
        width: width,
      ),
    );
  }
}
