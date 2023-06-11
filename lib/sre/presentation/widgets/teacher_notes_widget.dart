import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/category/teacher/presentation/pages/teacher_profile.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_three_images.dart';

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
        Container(
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
                        if(TeacherProfileScreen.screenIndex==1)
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
                    Container(
                      width: AppConstants.width*AppWidth.s263,
                      child: Slider(
                        value: height,
                        max:240,
                        min:100,
                        activeColor: ColorsManager.white,
                        inactiveColor: ColorsManager.white,
                        onChanged: (value){
                        setState(() {
                          height=value;
                        });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: CustomButton(text: 'Book it now', color: ColorsManager.white,
                      textColor: ColorsManager.purpleNavy,),
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
