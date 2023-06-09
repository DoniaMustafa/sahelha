import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_error.dart';
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
  final AlignmentDirectional alignment;
  Function(bool)? onFocusChange;
  CustomTextField(
      {super.key,
      this.hintText,
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
      Container(
        // padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: textFormColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(
              color: ColorsManager.lightGray,
              width: 0.2,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Focus(
          onFocusChange: onFocusChange,
          child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            cursorColor: ColorsManager.maximumPurple,
            decoration: InputDecoration(
              prefix: isPrefix!
                  ? CustomSVGImage(
                      image: prefixIcon!,
                      width: 15,
                      height: 15,
                    )
                  : null,
              suffixIconConstraints:
                  BoxConstraints(maxWidth: 20, maxHeight: 20),
              suffixIcon: isSuffix!
                  ? CustomSVGImage(
                      image: suffixIcon!,
                      width: 20,
                      height: 20,
                    )
                  : null,
              hintText: hintText,
              hintStyle:
                  getMediumStyle(color: ColorsManager.mixGrey, fontSize: 14
                      // AppWidth.s14 * AppConstants.width,
                      ),
              contentPadding: EdgeInsets.symmetric(
                  vertical: AppWidth.s18 * AppConstants.width,
                  horizontal: AppWidth.s45 * AppConstants.width),
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
      CustomErrorWidget(
          alignment: alignment, visible: showError!, message: message)
    ]);
  }
}
