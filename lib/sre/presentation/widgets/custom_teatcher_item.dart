import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomTeacherItem extends StatelessWidget {
  const CustomTeacherItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 193, maxWidth: 154.96),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsManager.teacherBackground)),
              color: ColorsManager.black.withOpacity(0.6),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomPngImage(
                            image: AssetsManager.teacher,
                            height: 36,
                            width: 36,
                            isBorder: true),
                        Spacer(
                          flex: 1,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('45',
                                    style: getRegularStyle(
                                        fontSize: 11,
                                        color: ColorsManager.white)),
                                CustomSVGImage(
                                  image: AssetsManager.rating,
                                  height: 10,
                                  width: 10,
                                ),
                              ],
                            ),
                            Text('Cairo',
                                style: getRegularStyle(
                                    fontSize: 10,
                                    color: ColorsManager.white)),
                          ],
                        )
                      ],
                    ),
                  ),
// Spacer(flex:1),
                  Text(
                    'Donia Ahmed',
                    style: getMediumStyle(
                        fontSize: 15, color: ColorsManager.white),
                  ),

                  Text(
                    'In Biology',
                    style: getRegularStyle(
                        fontSize: 13, color: ColorsManager.white),
                  ),

                  Text(
                    '200 E.P/ Sessions',
                    style: getRegularStyle(
                        fontSize: 13, color: ColorsManager.yellow),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
