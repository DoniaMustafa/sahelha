import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../application/utils/resources/values_manager.dart';

class StudentRateScreen extends StatefulWidget {
  const StudentRateScreen({Key? key}) : super(key: key);

  @override
  State<StudentRateScreen> createState() => _StudentRateScreenState();
}

class _StudentRateScreenState extends State<StudentRateScreen> {
  TextEditingController notesController = TextEditingController();
  double rating = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: CustomIcon(icon: Icons.clear, iconColor: ColorsManager.whiteGrey,))),
                SizedBox(
                  height: 30,
                ),
                CustomPngImage(
                  image: AssetsManager.ratingDraw,
                  isBorderColor: true,
                  width: AppConstants.width * AppWidth.s285,
                  height: AppConstants.height * AppHeight.s191,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Rate your experience',
                    style: getBoldStyle(
                        fontSize: 20, color: ColorsManager.black),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    width: AppConstants.width * AppWidth.s300,
                    height: AppConstants.height * AppHeight.s160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'advantage of the session',
                                style: getRegularStyle(
                                    fontSize: 12,
                                    color: ColorsManager.black),
                              ),
                            ),
                            Container(
                                width:
                                    AppConstants.width * AppWidth.s100,
                                child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      rating = v;
                                      setState(() {});
                                    },
                                    starCount: 5,
                                    rating: rating,
                                    size: 20.0,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.blur_on,
                                    color: ColorsManager.yellow,
                                    borderColor: ColorsManager.gray,
                                    spacing: 0.0))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'comfort in place',
                                style: getRegularStyle(
                                    fontSize: 12,
                                    color: ColorsManager.black),
                              ),
                            ),

                            Container(
                                width:
                                    AppConstants.width * AppWidth.s100,
                                child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      rating = v;
                                      setState(() {});
                                    },
                                    starCount: 5,
                                    rating: rating,
                                    size: 20.0,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.blur_on,
                                    color: ColorsManager.yellow,
                                    borderColor: ColorsManager.gray,
                                    spacing: 0.0))
                          ],
                        ),SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'resources',
                                style: getRegularStyle(
                                    fontSize: 12,
                                    color: ColorsManager.black),
                              ),
                            ),
                            Container(
                                width:
                                    AppConstants.width * AppWidth.s100,
                                child: SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      rating = v;
                                      setState(() {});
                                    },
                                    starCount: 5,
                                    rating: rating,
                                    size: 20.0,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.blur_on,
                                    color: ColorsManager.yellow,
                                    borderColor: ColorsManager.gray,
                                    spacing: 0.0))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CustomTextField(
                  maxLines: 10,
                  hintText: 'Any other notes?',
                  textFormColor: ColorsManager.greyWithOpacity,
                ),
                SizedBox(
                  height: AppConstants.height * AppHeight.s30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppConstants.width * AppWidth.s100,
                    right: AppConstants.width * AppWidth.s100,
                  ),
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Send',
                    color: ColorsManager.purpleNavy,
                    textColor: ColorsManager.white,
                    outlined: false,
                  ),
                ),

                // SizedBox(
                //   height: 50,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
