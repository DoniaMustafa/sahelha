import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/teacher_button.dart';

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
              7.width,
              Text("11.0",
                  style:
                      getBoldStyle(color: ColorsManager.black, fontSize: 15)),
            ],
          ),
        ),
        SizedBox(
          height: AppConstants.height * AppHeight.s15,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: AppConstants.width * AppWidth.s39,
              right: AppConstants.width * AppWidth.s45),
          child: Container(
            width: AppConstants.width * AppWidth.s296,
            height: AppConstants.height * AppHeight.s185,
            decoration: BoxDecoration(
              color: ColorsManager.purpleNavy,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              children: [
                6.width,
                Container(
                  width: AppConstants.width * AppWidth.s5,
                  height: AppConstants.height * AppHeight.s150,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                11.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: AppConstants.width * AppWidth.s3,
                          top: AppConstants.height * AppHeight.s13),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: AppConstants.width * AppWidth.s180,
                            child: Text(
                              'Math for first year of secondary school',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: getMediumStyle(
                                  fontSize: 14, color: ColorsManager.white),
                            ),
                          ),
                          SizedBox(
                            width: AppConstants.width * AppWidth.s38,
                          ),
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
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: AppConstants.width * AppWidth.s3,
                            top: AppConstants.height * AppHeight.s13),
                        child: Text(
                          "11:00 AM - 11:30 AM",
                          style: getMediumStyle(
                              fontSize: 12, color: ColorsManager.brightGray),
                        )),
                    10.height,
                    Row(
                      children: [
                        SizedBox(
                          width: AppConstants.width * AppWidth.s190,
                        ),
                        Text(
                          "+20",
                          style: getRegularStyle(
                              fontSize: 12, color: ColorsManager.white),
                        ),
                        5.width,
                        Stack(
                          children: [
                            Container(
                              width: AppConstants.width * AppWidth.s14,
                              height: AppConstants.height * AppHeight.s14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: ColorsManager.purpleNavy,
                                      width: 1
                                  )
                              ),
                              child: Image(
                                image: AssetImage("assets/images_png/user.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Container(
                                width: AppConstants.width * AppWidth.s14,
                                height: AppConstants.height * AppHeight.s14,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: ColorsManager.purpleNavy,
                                    width: 1
                                  )
                                ),
                                child: Image(
                                  image: AssetImage("assets/images_png/user.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Container(
                                width: AppConstants.width * AppWidth.s14,
                                height: AppConstants.height * AppHeight.s14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: ColorsManager.purpleNavy,
                                        width: 1
                                    )
                                ),
                                child: Image(
                                  image: AssetImage("assets/images_png/user.png"),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: AppConstants.width*AppWidth.s250,
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
                      padding:  EdgeInsets.only(left: AppConstants.width*AppWidth.s58),
                      child: TeacherButton(text: 'Book it now', buttonColor: ColorsManager.white,)
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
