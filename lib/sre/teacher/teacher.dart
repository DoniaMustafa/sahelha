import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/teacher_image_widget.dart';
import 'package:sahelha_app/sre/teacher/day_screen.dart';
import 'package:sahelha_app/sre/teacher/month_screen.dart';
import 'package:sahelha_app/sre/teacher/week_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';
class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  int screenIndex=0;
  List pages = [
    DayScreen(),
    WeeckScreen(),
    MonthScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: AppConstants.width * AppWidth.s10
                  ,top: AppConstants.height * AppHeight.s48),
              child: Text("Teacher Name",
                style: getBoldStyle(color: ColorsManager.purpleNavy,fontSize: 15,height: 1, ),
              ),
            ),
            16.height,
            Padding(
              padding:  EdgeInsets.only(left:AppConstants.width * AppWidth.s28 ,
                  right:AppConstants.width * AppWidth.s10
              ),
              child: Row(
                children: [
                  TeacherImageWidget(teacherImagePath: null,),
                  10.width,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('In Math',
                      style: getMediumStyle(color: ColorsManager.black,fontSize: 15,),
                      ),
                      7.height,
                      Text('Location',
                        style: getMediumStyle(color: ColorsManager.gray,fontSize: 10,),
                      ),
                      3.height,
                      Text('20 star',
                        style: getMediumStyle(color: ColorsManager.purpleNavy,fontSize: 15,),
                      ),
                    ],
                  ),
                  140.width,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('4.5',
                        style: getMediumStyle(color: ColorsManager.black,fontSize: 12,),
                      ),
                      2.width,
                      Container(
                        width: 12,
                        height: 12,
                        child: Image(image: AssetImage("assets/images_png/star.png"),
                          color: ColorsManager.accentYellow,

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            29.height,
            ToggleSwitch(
              minWidth:AppConstants.width*AppWidth.s300,
              minHeight:  AppConstants.height*AppHeight.s38,
              fontSize: 14.0,
              initialLabelIndex: screenIndex,
              activeBgColor: [ColorsManager.white],
              activeFgColor:ColorsManager.purpleNavy,
              inactiveBgColor: ColorsManager.purpleNavy,
              inactiveFgColor: ColorsManager.white,
              totalSwitches: 3,
              cornerRadius: 11,
              radiusStyle: true,
              labels: ['Day', 'Week', 'Month'],
              changeOnTap: true,
              onToggle: (index) {
                  setState((){
                    screenIndex=index!;
                  });
                  print(screenIndex);
                  print(index);
              },
            ),
            24.height,
            screenIndex == 0?
                pages[screenIndex!]
                :screenIndex== 1
                ? pages[screenIndex!]
                : pages[screenIndex!],
          ],
        ),
      ),
    );
  }
}
