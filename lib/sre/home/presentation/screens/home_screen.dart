import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_circle.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_subject_shape.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_teatcher_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(right: 20, left: 20, top: 50, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            children: [
              _buildUserInfoAndIcons(),
              const  SizedBox(
                height: 37,
              ),
              _buildAds(),
              const  SizedBox(
                height: 25,
              ),
              const Text('Subjects'),
              const  SizedBox(
                height: 12,
              ),
              _buildSubjects(),
              const   SizedBox(
                height: 33,
              ),
              const  Text('best teachers'),
              const  SizedBox(
                height: 12,
              ),
              _buildBestTeachers(),
              const  SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfoAndIcons() => Row(
        children: [
          CustomPngImage(
              image: AssetsManager.user, height: 48, width: 48, isBorder: true),
          SizedBox(
            width: AppConstants.width * AppWidth.s5,
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
  Widget _buildAds() => Stack(
        children: [
          Image.asset(
            AssetsManager.ads,
            width: 360,
            height: 171,
          ),
          Container(
            width: 360,
            height: 171,
            decoration: BoxDecoration(
                color: ColorsManager.black.withOpacity(0.4),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset(
                          AssetsManager.offer,
                          width: 105,
                          height: 27,
                        ),
                        Text(
                          '50 % Offer',
                          style: getRegularStyle(
                              fontSize: 11, color: ColorsManager.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            '45',
                            style: getRegularStyle(
                                fontSize: 10, color: ColorsManager.white),
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
                    )
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  'In Biology',
                  style: getMediumStyle(
                      fontSize: 13, color: ColorsManager.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'For The First Three Sessions',
                  style:
                      getRegularStyle(fontSize: 13, color: ColorsManager.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 110.0,),
                  child: CustomButton(
                    color: ColorsManager.lightPurple,
                    text: 'Book It Now',
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      );
  Widget _buildSubjects() => SizedBox(
        height: 110,
        child: ListView.builder(
          itemCount: 8,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int i) =>CustomSubjectShape()
        ),
      );
  Widget _buildBestTeachers()=>SizedBox(
      height: 195,
      child: ListView.builder(
        itemBuilder: (context, i) => CustomTeacherItem(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ));
}
