
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSVGImage extends StatelessWidget {
  CustomSVGImage(
      {Key? key, required this.image, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      height: height,
      width: width,
      // fit: BoxFit.cover,
    );
  }
}
