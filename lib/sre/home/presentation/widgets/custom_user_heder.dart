import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_circle.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class CustomUserHeader extends StatelessWidget {
  const CustomUserHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPngImage(isBorderColor: true,
          image: AssetsManager.user, height: 48, width: 48, isBorder: true,),
        SizedBox(
            width: 5
          // AppConstants.width * AppWidth.s5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile Name',
                style: getSemiBoldStyle(
                    fontSize: 15, color: ColorsManager.black),
              ),
              SizedBox(
                height: AppConstants.height * AppHeight.s2,
              ),
              Text(
                'Academic Year',
                style: getRegularStyle(),
              ),
            ],
          ),
        ),
        CustomCircle(
          isBorder: true,
          image: AssetsManager.search,
          borderColor: ColorsManager.purpleNavy,
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 12,
        ),
        CustomCircle(
          isBorder: true,
          image: AssetsManager.notify,
          borderColor: ColorsManager.purpleNavy,
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
