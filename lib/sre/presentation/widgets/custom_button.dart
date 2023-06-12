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
  bool? _isIcon;
  bool? _isLogo;
  String? _image;
  bool? _isBold;
  double? _fontSize;
  double? _width;
  Color? _iconColor;
  double? _height;

  CustomButton(
      {required String text,
      bool outlined = false,
        Color iconColor = ColorsManager.lightPurple,
      Color color = ColorsManager.purpleNavy,
      Color textColor = ColorsManager.white,
      this.showLoading = false,
      String? image,
      double  width =20,
      double  height=20,
      bool isIcon = false,
      double? fontSize = 15,
      bool isLogo = false,
        bool? isBold = false,
      void Function()? onPressed,
      Key? key})
      : super(key: key) {

    _isBold=isBold;
    _iconColor=iconColor;
    _isIcon = isIcon;
    _isLogo = isLogo;
    _text = text;
    _onPressed = onPressed;
    _color = color;
    _textColor = textColor;
    _outlined = outlined;
    _image = image;
    _fontSize = fontSize;
    _width = width;
    _height = height;
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
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_isLogo!)
            CustomPngImage(
              image: _image!,
              isBorderColor: true,
              width: _width!,
              height: _height!,
            ),
          if (_isLogo!)
            SizedBox(
              width: AppConstants.width * AppWidth.s5,
            ),
          Text(
            _text!,
            style: _isBold!
                ? getBoldStyle(
                    color: _textColor!,
                    fontSize: _fontSize!,
                  )
                : getRegularStyle(
                    color: _textColor!,
                    fontSize: _fontSize!,
                  ),
          ),
          if (_isIcon!)
            SizedBox(
              width: AppConstants.width * AppWidth.s8,
            ),
          if (_isIcon!)
            CircleAvatar(
              child: Icon(Icons.arrow_forward,
                  size: AppWidth.s15 * AppConstants.width,
                  color: ColorsManager.white),
              radius: AppConstants.circleRadius,
              backgroundColor:_iconColor,
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
