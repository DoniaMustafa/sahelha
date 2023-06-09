import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/fonts_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class ChooseSplashScreen extends StatelessWidget {
  const ChooseSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Expanded(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: AppConstants.height * AppHeight.s124,
                    width: AppConstants.width * AppWidth.s124,
                    child: CustomSVGImage(
                      image: AssetsManager.logo,
                    )),
                SizedBox(height: AppConstants.height * AppHeight.s25),
                Text(AppStrings.appNameEN,
                    textAlign: TextAlign.center,
                    style: getSemiBoldStyle(
                        fontSize: 25, color: ColorsManager.darkBlue,
                        fontFamily: FontConstants.fontFamilyTajawal)),
                Text(AppStrings.appNameAR,
                    textAlign: TextAlign.center,
                    style: getSemiBoldStyle(
                        fontSize: 30, color: ColorsManager.darkBlue,fontFamily: FontConstants.fontFamilyTajawal)),
              ],
            ),
          ),
            // Spacer(flex: 1,),
            Text(AppStrings.areYouA,
                textAlign: TextAlign.center,
                style: getBoldStyle(
                  fontSize: 15,
                )),
            SizedBox(height: AppConstants.height * AppHeight.s40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: CustomButton(text: 'student',isIcon: true,)),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*AppWidth.s20),
                    child: Text('Or',
                        textAlign: TextAlign.center,
                        style: getSemiBoldStyle(
                          fontSize: 15,
                        )),
                  ),
                  Expanded(child: CustomButton(text: 'Teacher',outlined: true,)),

                ],
              ),
            ),
            SizedBox(height: AppConstants.height * AppHeight.s40),
          ],
        ),
      ),
    );
  }
}
