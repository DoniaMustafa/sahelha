import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;
  final bool? visible;
  final AlignmentDirectional alignment;
  const CustomErrorWidget({
    this.alignment = AlignmentDirectional.topStart,
    this.message,
    bool this.visible = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: visible!
          ? Align(
        alignment: alignment,
        child: Column(//set widgets vertically
          children: [
            SizedBox(
              height: AppHeight.s10 * AppConstants.height,
            ),
            Text(
              message!,
              style: getMediumStyle(
                  fontSize: AppWidth.s14 * AppConstants.width,
                  color: ColorsManager.red),
            ),
            SizedBox(
              height: AppHeight.s10 * AppConstants.height,
            ),
          ],
        ),
      )
          : null,
    );
  }
}
