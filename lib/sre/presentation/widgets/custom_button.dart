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
  CustomButton(
      {required String text,
      bool outlined = false,
      Color color = ColorsManager.lightPurple,
      Color textColor = ColorsManager.white,
      this.showLoading = false,
      String? image,
      this.isIcon = false,
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
            horizontal: AppWidth.s15 * AppConstants.width),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: _outlined!
                ? BorderSide(color: ColorsManager.purpleNavy, width: 1)
                : BorderSide.none),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLogo!) CustomSVGImage(image: _image!),

          Text(
            _text!,
            style: isBold!
                ? getBoldStyle(
                    color: _outlined! ? _textColor! : ColorsManager.white,
                    fontSize: AppWidth.s15 * AppConstants.width,
                  )
                : getRegularStyle(
                    color: _outlined! ? _textColor! : ColorsManager.white,
                    fontSize: AppWidth.s18 * AppConstants.width,
                  ),
          ),
          if (isIcon!)
            SizedBox(
              width: 8,
            ),
          if (isIcon!)
            CircleAvatar(
              child: Icon(Icons.arrow_forward,
                  size: 15, color: ColorsManager.white),
              radius: 8,
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
