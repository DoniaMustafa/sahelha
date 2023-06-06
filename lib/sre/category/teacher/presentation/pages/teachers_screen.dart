import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_subject_shape.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class TeachersScreen extends StatelessWidget {
  const TeachersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,

          itemBuilder: (context, index) => _buildItem()),
    );
  }

  Widget _buildItem() => Stack(
        children: [
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 10),
            margin:
                EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                color: ColorsManager.whiteGrey.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: Container()),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hassnaa adel',
                        style: getSemiBoldStyle(fontSize: 12),
                      ),
                      Text(
                        'in math',
                        style: getMediumStyle(
                            fontSize: 12, color: ColorsManager.lightPurple),
                      ),
                      Text('dakhlya , mansour',
                          style: getMediumStyle(
                              fontSize: 9, color: ColorsManager.mixGrey)),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            '45',
                            style: getRegularStyle(
                                fontSize: 10, color: ColorsManager.black),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 2),
                          CustomSVGImage(
                            image: AssetsManager.rating,
                            height: 10,
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    Text('20 Sar',
                        style: getMediumStyle(
                            fontSize: 12, color: ColorsManager.lightPurple))
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 2,
              child: CustomPngImage(
                image: AssetsManager.teacherImg,
                width: 90,
                height: 80,
              ))
        ],
      );
}
