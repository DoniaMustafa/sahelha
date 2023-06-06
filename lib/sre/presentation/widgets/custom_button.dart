import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class CustomButton extends StatelessWidget {
  String? _text;
  void Function()? _onPressed;
  Color? _textColor;
  Color? _color;
  bool? _outlined;
  bool? showLoading;
  bool? isLogo;
  String? _image;
  CustomButton(
      {required String text,
      bool outlined = false,
      Color color = ColorsManager.lightPurple,
      Color textColor = ColorsManager.white,
      this.showLoading = false,
      String? image,
      this.isLogo = false,
      void Function()? onPressed,
      Key? key})
      : super(key: key) {
    _text = text;
    _onPressed = onPressed;
    _color = color;
    _textColor = textColor;
    _outlined = outlined;
    _image=image;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(0, 44),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
        backgroundColor: _outlined! ? ColorsManager.transparent : _color,
        padding:
            EdgeInsets.symmetric(vertical: AppWidth.s16 * AppConstants.width),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: _outlined!
                ? BorderSide(color: ColorsManager.lightPurple, width: 1)
                : BorderSide.none),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLogo!) CustomPngImage(image: _image!),

          Text(
            _text!,
            style: getRegularStyle(
              color: _outlined! ?_textColor!: ColorsManager.white ,
              fontSize: AppWidth.s18 * AppConstants.width,
            ),
          ),
          // if(showLoading!)Row(
          //   children: [
          //     SizedBox(
          //       width: 20,
          //     ),
          //     GradientCircularProgressIndicator(
          //       radius: 12,
          //       strokeWidth: 2,
          //       gradientColors: [ColorsManager.maximumPurple, ColorsManager.maximumPurple.withOpacity(0.3)],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
