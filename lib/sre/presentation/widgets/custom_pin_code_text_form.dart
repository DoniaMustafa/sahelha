import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';

import '../../application/utils/constants/app_constants.dart';

class CustomPinCodeTextField extends StatelessWidget {
  final String? Function(String? text)? validator;
  final void Function(String text) onChanged;
  final void Function(String? text)? onSaved;
  final String? message;
  final bool? showError;
  final AlignmentDirectional alignment;
  const CustomPinCodeTextField({
    Key? key,
    this.validator,
    required this.onChanged,
    this.onSaved,
    this.message,
    this.showError = false,
    this.alignment = AlignmentDirectional.topStart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //set widgets vertically
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            validator: validator,
            onSaved: onSaved,
            onChanged: onChanged,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            obscureText: false,
            animationType: AnimationType.fade,
            textStyle: const TextStyle(color: ColorsManager.purpleNavy),
            showCursor: true,
            cursorColor: ColorsManager.purpleNavy,

            pinTheme: PinTheme(
              fieldHeight: AppWidth.s50 * AppConstants.width,
              fieldWidth: AppWidth.s50 * AppConstants.width,
              inactiveColor: ColorsManager.gray.withOpacity(0.5),
              shape: PinCodeFieldShape.box,borderWidth: 0.5,
              borderRadius: BorderRadius.circular(11),
              activeColor: ColorsManager.purpleNavy,
              inactiveFillColor: ColorsManager.transparent,
              selectedFillColor: ColorsManager.lightBabyBlue,
              selectedColor: ColorsManager.purpleNavy,
              activeFillColor: ColorsManager.lightBabyBlue,

            ),
            autoDismissKeyboard: true,
            enablePinAutofill: true,
            enableActiveFill: true,
          ),
        ),
        // CustomErrorWidget(
        //   alignment: alignment,
        //   visible: showError!,
        //   message: message,
        // )
      ],
    );
  }
}
