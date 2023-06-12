import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_ciecle_active.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomPngImage extends StatelessWidget {
  CustomPngImage(
      {Key? key,
      required this.image,
        this.icon,
        this.isIcon=false,
      this.isBorder = false,
      this.width = 0.0,
      this.height = 0.0,
      this.color = ColorsManager.purpleNavy,
      this.isBorderColor = false,
      this.isOnline = false,
      this.isUser = false})
      : super(key: key);
  final String image;
  final  bool isBorderColor;
  final  bool isBorder;
  final double width;
  final double height;
  final  bool isOnline;
  final Color color;
  final bool isUser;
  final bool isIcon;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          width: width,
          height: height,
          padding: isBorder ? EdgeInsets.all(2.0) : EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: isBorderColor ? ColorsManager.transparent : color,
              border: Border.all(
                  color: isBorderColor
                      ? ColorsManager.purpleNavy
                      : ColorsManager.transparent,
                  width: 2,
                  style: isBorder ? BorderStyle.solid : BorderStyle.none),
              borderRadius:
                  BorderRadius.all(Radius.circular(isBorder ? 25 : 5))),
          child: Image.asset(image, fit: BoxFit.fill),
        ),
        if (isOnline) CustomCircleActive(isOnline: isOnline, isUser: isUser),
        if (isIcon)
          CustomSVGImage(
            image: icon!,
            width: AppConstants.width * AppWidth.s15,
            height: AppHeight.s15 * AppConstants.height,
          ),
      ],
    );
  }
}
