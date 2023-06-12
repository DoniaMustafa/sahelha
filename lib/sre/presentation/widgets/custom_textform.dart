import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_error.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomTextField extends StatelessWidget {
  String? Function(String? text)? validator;
  void Function(String text)? onChanged;
  void Function(String? text)? onSaved;
  bool? isNumber;
  int? maxLines;
  TextEditingController? controller;
  String? hintText;
  String? message;
  bool? showError;
  Color? textFormColor;
  bool? isSuffix;
  bool? isPrefix;
  String? prefixIcon;
  String? suffixIcon;
  double prefixWidth;
  double prefixHeight;
  VoidCallback? suffixOnTap;
  final AlignmentDirectional alignment;
  Function(bool)? onFocusChange;
  CustomTextField(
      {super.key,
      this.hintText,
      this.suffixOnTap,
      this.prefixHeight = 0.0,
      this.prefixWidth = 0.0,
      this.maxLines,
      this.message,
      this.showError = false,
      this.isPrefix = false,
      this.prefixIcon,
      this.isSuffix = false,
      this.suffixIcon,
      this.alignment = AlignmentDirectional.topStart,
      this.validator,
      this.onChanged,
      this.textFormColor = ColorsManager.white,
      this.isNumber = false,
      this.onSaved,
      this.onFocusChange,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return Column(//set widgets vertically
        children: [
      Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(AppConstants.circleRadius),
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppConstants.width * AppWidth.s10),
          decoration: BoxDecoration(
            color: textFormColor,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     spreadRadius: 2,
            //     blurRadius: 3,
            //     offset: Offset(0, 3), // changes position of shadow
            //   ),
            // ],
            border: Border.all(
                color: ColorsManager.lightGray,
                width: 0.2,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(AppConstants.circleRadius),
          ),
          child: Focus(
            onFocusChange: onFocusChange,
            child: TextFormField(
              controller: controller,
              maxLines: maxLines,
              cursorColor: ColorsManager.purpleNavy,
              decoration: InputDecoration(
                prefixIcon: isPrefix!
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: CustomPngImage(
                          isBorderColor: true,
                          image: prefixIcon!,
                          width: prefixWidth,
                          height: prefixHeight,
                        ),
                      )
                    : null,

                prefixIconConstraints: BoxConstraints(
                    maxWidth: AppConstants.width * AppWidth.s30,
                    maxHeight: AppConstants.height * AppHeight.s30),
                suffixIconConstraints:
                    BoxConstraints(maxWidth: 30, maxHeight: 30),
                suffixIcon: isSuffix!
                    ? GestureDetector(
                        onTap: suffixOnTap,
                        child: CustomSVGImage(
                          image: suffixIcon!,
                          width: AppConstants.width * AppWidth.s20,
                          height: AppConstants.height * AppHeight.s15,
                        ),
                      )
                    : null,
                hintText: hintText,
                hintStyle:
                    getMediumStyle(color: ColorsManager.mixGrey, fontSize: 14
                        // AppWidth.s14 * AppConstants.width,
                        ),
                // contentPadding: EdgeInsets.symmetric(
                //     vertical: AppWidth.s18 * AppConstants.width,
                //     horizontal: AppWidth.s45* AppConstants.width),
                border: InputBorder.none,
              ),
              onSaved: onSaved,
              validator: validator,
              onChanged: onChanged,
              keyboardType: isNumber!
                  ? TextInputType.numberWithOptions(decimal: false)
                  : null,
            ),
          ),
        ),
      ),
      CustomErrorWidget(
          alignment: alignment, visible: showError!, message: message)
    ]);
  }
}
