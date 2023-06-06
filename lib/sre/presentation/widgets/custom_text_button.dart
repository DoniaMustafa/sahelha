import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';

class CustomTextButton extends StatelessWidget {
   CustomTextButton({Key? key,this.onPress,required this.text}) : super(key: key);
  final VoidCallback? onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          padding:
          MaterialStateProperty.all(EdgeInsets.zero)),
      onPressed:onPress!,
      child: Text(text,
          style: getRegularStyle(
              color: ColorsManager.purpleNavy, fontSize: 15)),
    );
  }
}
