import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class CustomSubjectShape extends StatelessWidget {
  const CustomSubjectShape({Key? key, required this.image, required this.text}) : super(key: key);
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: AppConstants.height*AppHeight.s7),
      margin: EdgeInsetsDirectional.symmetric(horizontal:  AppConstants.width*AppWidth.s5,vertical: AppConstants.height*AppHeight.s5),

      width: AppConstants.width*AppWidth.s57,
      height: AppConstants.height*AppHeight.s105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: ColorsManager.lightPurple),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         CustomPngImage(color: ColorsManager.white,
         isBorder: true,
           image: image,
           width: AppConstants.width*AppWidth.s40,
           height: AppConstants.height*AppHeight.s45,
         ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: getRegularStyle(color: ColorsManager.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
