import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
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
  double rating =0;
  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                  top:  AppConstants.height*AppHeight.s22,
                left: AppConstants.width*AppWidth.s10,),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.clear),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                left: AppConstants.width*AppWidth.s54,
                right: AppConstants.width*AppWidth.s54,
                top: AppConstants.height*AppHeight.s42,
                bottom: AppConstants.height*AppHeight.s32,
              ),
              child: CustomSVGImage(image: AssetsManager.rating_draw,
                width: AppConstants.width*AppWidth.s285,
                height: AppConstants.height*AppHeight.s191,),
            ),
            Center(
              child: Text(
                'Rate your experience',
                style: getBoldStyle(fontSize: 20,color: ColorsManager.black),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: AppConstants.height*AppHeight.s33,
              ),
              child: Center(
                child: Container(
                  width: AppConstants.width*AppWidth.s300,
                  height: AppConstants.height*AppHeight.s160,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                                style: getMediumStyle(
                                    fontSize: 12, color: ColorsManager.black),
                              ),
                            ),
                            Container(
                              width: AppConstants.width*AppWidth.s100,
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
                                  spacing:0.0
                              )
                            )

                          ],
                        ),
                        Padding(
                          padding:EdgeInsets.only(
                            top: AppConstants.height*AppHeight.s17,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'comfort in place',
                                  style: getMediumStyle(
                                      fontSize: 12, color: ColorsManager.black),
                                ),
                              ),
                              Container(
                                  width: AppConstants.width*AppWidth.s100,
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
                                      spacing:0.0
                                  )
                              )

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: AppConstants.height*AppHeight.s17,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'resources',
                                  style: getMediumStyle(
                                      fontSize: 12, color: ColorsManager.black),
                                ),
                              ),
                              Container(
                                  width: AppConstants.width*AppWidth.s100,
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
                                      spacing:0.0
                                  )
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding:EdgeInsets.all(15) ,
                width:AppConstants.width*AppWidth.s300 ,
                height: AppConstants.height*AppHeight.s199,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsManager.greyWithOpacity
                ),
                child: TextFormField(
                  controller: notesController,
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Any other notes?',
                  ),
                ),
              ),
            ),
            SizedBox(height: AppConstants.height*AppHeight.s30,),
            Padding(
              padding:  EdgeInsets.only(
                  left: AppConstants.width*AppWidth.s140,
                  right: AppConstants.width*AppWidth.s140,

              ),
              child: CustomButton(onPressed: (){},text: 'Send', color: ColorsManager.purpleNavy,
                textColor: ColorsManager.white,outlined: false,
              ),
            ),
            SizedBox(
              height: 50,
            )



          ],
        ),
      ),
    );
  }
}
