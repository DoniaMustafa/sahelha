import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/teacher_info.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_three_images.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TeacherNotesWiget extends StatefulWidget {
  @override
  State<TeacherNotesWiget> createState() => _TeacherNotesWigetState();


}

class _TeacherNotesWigetState extends State<TeacherNotesWiget> {
  double height=120;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: AppConstants.width * AppWidth.s15,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppConstants.width * AppWidth.s22,
                height: AppConstants.height * AppHeight.s22,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ColorsManager.accentYellow, ColorsManager.yellow2],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Container(
                    width: AppConstants.width * AppWidth.s13,
                    height: AppConstants.height * AppHeight.s13,
                    decoration: BoxDecoration(
                      color: ColorsManager.accentYellow,
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                ),
              ),
                SizedBox(width: AppConstants.width*AppWidth.s7,),
              Text("11.0",
                  style:
                      getBoldStyle(color: ColorsManager.black, fontSize: 15)),
            ],
          ),
        ),
        SizedBox(
          height: AppConstants.height * AppHeight.s15,
        ),
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, Routes.teacherClassRoute),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: AppConstants.width * AppWidth.s39),
            padding: EdgeInsetsDirectional.all(  AppConstants.width*AppWidth.s12),
            // width: AppConstants.width * AppWidth.s296,
            // height: AppConstants.height * AppHeight.s185,
            decoration: BoxDecoration(
              color: ColorsManager.purpleNavy,
              borderRadius: BorderRadius.circular(AppConstants.width * AppWidth.s15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(width: AppConstants.width*AppWidth.s6,),
                Container(
                  width: AppConstants.width * AppWidth.s5,
                  height: AppConstants.height * AppHeight.s160,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.circular(AppConstants.width * AppWidth.s6),
                  ),
                ),
                SizedBox(
                  width: AppConstants.width * AppWidth.s14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 1,
                            child: Text(
                              'Math for first year of secondary school',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: getMediumStyle(
                                height: 1.2,
                                  fontSize: 14, color: ColorsManager.white),
                            ),
                          ),
                          // if(StudentScreen.screenIndex==1)
                          SizedBox(
                            width: AppConstants.width * AppWidth.s38,
                          ),
                          if(TeacherInfoScreen.screenIndex==1)
                          Container(
                            width: AppConstants.width * AppWidth.s22,
                            height: AppConstants.height * AppHeight.s22,
                            decoration: BoxDecoration(
                              color: ColorsManager.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Icon(Icons.favorite,
                                    color: Colors.red, size: 17)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.height * AppHeight.s6,
                      ),
                      Text(
                        "11:00 AM - 11:30 AM",
                        style: getLightStyle(
                            fontSize: 12, color: ColorsManager.whiteGrey),
                      ),
                      SizedBox(
                        height: AppConstants.height * AppHeight.s10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(
                            "+20",
                            style: getRegularStyle(
                                fontSize: 12, color: ColorsManager.white),
                          ),
                          SizedBox(
                            width: AppConstants.width * AppWidth.s5,
                          ),
                          customThreeImages(ColorsManager.purpleNavy)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 20),
                        child: Container(
                          width: AppConstants.width*AppWidth.s263,
                          child: const StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 32,
                            size: 8,
                            padding: 0,
                            selectedColor: Colors.white,
                            unselectedColor: Colors.white,
                            roundedEdges: Radius.circular(10),
                              selectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.white, Colors.white],
                              ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.white70, Colors.white70],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: CustomButton(text: 'Book it now', color: ColorsManager.white,
                        onPressed: (){},
                        textColor: ColorsManager.purpleNavy,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
