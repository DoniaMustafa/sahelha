import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_three_images.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SubjectSelectWidget extends StatefulWidget {
  const SubjectSelectWidget({Key? key}) : super(key: key);

  @override
  State<SubjectSelectWidget> createState() => _SubjectSelectWidgetState();
}

class _SubjectSelectWidgetState extends State<SubjectSelectWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppConstants.width * AppWidth.s21),
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
                            'first year of secondary school',
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
                        Text(
                          '30 Stars',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: getMediumStyle(
                              height: 1.2,
                              fontSize: 14, color: ColorsManager.yellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.height * AppHeight.s6,
                    ),
                    Text(
                      "Teacher Name",
                      style: getMediumStyle(
                          fontSize: 14, color: ColorsManager.yellow),
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
                          "3 set left",
                          style: getRegularStyle(
                              fontSize: 13, color: ColorsManager.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 20),
                      child: Container(
                        width: AppConstants.width*AppWidth.s263,
                        child:  StepProgressIndicator(
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
                      padding:  EdgeInsets.only(left: AppConstants.width*AppWidth.s140),
                      child: CustomButton(onPressed: (){},text: 'Book it now', color: ColorsManager.white,
                        textColor: ColorsManager.purpleNavy,outlined: false,),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
