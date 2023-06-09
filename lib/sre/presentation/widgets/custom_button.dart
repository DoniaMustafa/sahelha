import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomButton extends StatelessWidget {
  String? _text;
  void Function()? _onPressed;
  Color? _textColor;
  Color? _color;
  bool? _outlined;
  bool? showLoading;
  bool? isIcon;
  bool? isLogo;
  String? _image;
  bool? isBold;
  double? fontSize;
  CustomButton(
      {required String text,
      bool outlined = false,
      Color color = ColorsManager.lightPurple,
      Color textColor = ColorsManager.white,
      this.showLoading = false,
      String? image,
      this.isIcon = false,
        this.fontSize = 15,
      this.isLogo = false,
      this.isBold = false,
      void Function()? onPressed,
      Key? key})
      : super(key: key) {
    _text = text;
    _onPressed = onPressed;
    _color = color;
    _textColor = textColor;
    _outlined = outlined;
    _image = image;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
        backgroundColor: _outlined! ? ColorsManager.transparent : _color,
        padding: EdgeInsets.symmetric(
            vertical: AppHeight.s10 * AppConstants.height,
           ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.circleRadius),
            side: _outlined!
                ? BorderSide(color: ColorsManager.purpleNavy, width: 1)
                : BorderSide.none),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLogo!) CustomSVGImage(image: _image!),
          if (isLogo!) SizedBox(
            width: AppConstants.width*AppWidth.s5,
          ),
          Text(
            _text!,
            style: isBold!
                ? getBoldStyle(
                    color: _outlined! ? _textColor! : ColorsManager.white,
                    fontSize:fontSize!,
                  )
                : getRegularStyle(
                    color: _outlined! ? _textColor! : ColorsManager.white,
                    fontSize: fontSize!,
                  ),
          ),
          if (isIcon!)
            SizedBox(
              width:  AppConstants.width*AppWidth.s8,
            ),
          if (isIcon!)
            CircleAvatar(
              child: Icon(Icons.arrow_forward,
                  size: AppWidth.s15 * AppConstants.width, color: ColorsManager.white),
              radius: AppConstants.circleRadius,
              backgroundColor: ColorsManager.lightPurple,
            ),
          // if(showLoading!)Row(
          //   children: [
          //     SizedBox(
          //       width: 20,
          //     ),
          // GradientCircularProgressIndicator(
          //   radius: 12,
          //   strokeWidth: 2,
          //   gradientColors: [ColorsManager.maximumPurple, ColorsManager.maximumPurple.withOpacity(0.3)],
          // ),
          //   ],
          // )
        ],
      ),
    );
  }
}
