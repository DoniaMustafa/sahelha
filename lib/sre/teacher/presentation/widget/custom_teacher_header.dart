import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class CustomTeacherHeader extends StatelessWidget {
  const CustomTeacherHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back,color: ColorsManager.white),
            SizedBox(width: AppWidth.s100*AppConstants.width,),
            Expanded(
              // flex:5,
                child: Text('hassnaa adel',style: getSemiBoldStyle(fontSize: 15,color: ColorsManager.white),))
          ],),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomPngImage(
              image: AssetsManager.teacherImg,
              width: 92,
              height: 85,
              isBorderColor: false,

            ),
            Expanded(
              // flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Hassnaa adel',
                          style: getMediumStyle(
                              fontSize: 14, color: ColorsManager.white),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: getRegularStyle(
                            fontSize: 11, color: ColorsManager.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 2),
                      CustomIcon(
                        icon: Icons.star,
                        iconColor: ColorsManager.yellow,
                        size: 15,
                      )
                    ],
                  ),
                  SizedBox(height:5),
                  Text(
                    'dakhlya , mansour',
                    style: getRegularStyle(
                        fontSize: 10, color: ColorsManager.white),
                  ),
                  SizedBox(height: 5),
                  Text('20 Sar/ session',
                      style: getMediumStyle(
                          fontSize: 14, color: ColorsManager.white)),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
