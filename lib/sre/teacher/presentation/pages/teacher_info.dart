import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/teacher_image_widget.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/day_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/month_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/week_screen.dart';

import 'package:toggle_switch/toggle_switch.dart';

class TeacherInfoScreen extends StatefulWidget {
  TeacherInfoScreen({Key? key}) : super(key: key);
  static int screenIndex = 0;
  @override
  State<TeacherInfoScreen> createState() => _TeacherInfoScreenState();
}

class _TeacherInfoScreenState extends State<TeacherInfoScreen> {
  List pages = [
    DayScreen(),
    WeeckScreen(),
    MonthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: AppConstants.width * AppWidth.s10,
                    top: AppConstants.height * AppHeight.s20),
                child: Text(
                  "Teacher Name",
                  style: getBoldStyle(
                    color: ColorsManager.purpleNavy,
                    fontSize: 15,
                    height: 1,
                  ),
                ),
              ),
              16.height,
              Padding(
                padding: EdgeInsets.only(
                    left: AppConstants.width * AppWidth.s28,
                    right: AppConstants.width * AppWidth.s10),
                child: Row(
                  children: [
                    Expanded(
                        child: TeacherImageWidget(
                      teacherImagePath: null,
                    )),
                    10.width,
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'In Math',
                            style: getMediumStyle(
                              color: ColorsManager.black,
                              fontSize: 15,
                            ),
                          ),
                          7.height,
                          Text(
                            'dakhlya , mansour',
                            style: getMediumStyle(
                              color: ColorsManager.gray,
                              fontSize: 10,
                            ),
                          ),
                          3.height,
                          Text(
                            '20 star',
                            style: getMediumStyle(
                              color: ColorsManager.purpleNavy,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 140.width,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '4.5',
                          style: getMediumStyle(
                            color: ColorsManager.black,
                            fontSize: 12,
                          ),
                        ),
                        2.width,
                        Container(
                          width: 12,
                          height: 12,
                          child: Image(
                            image: AssetImage("assets/images_png/star.png"),
                            color: ColorsManager.accentYellow,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              29.height,
              Container(margin:EdgeInsets.symmetric(horizontal: 20) ,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: ColorsManager.purpleNavy,
                    borderRadius: BorderRadius.all(Radius.circular(AppConstants.circleRadius))),
                child: ToggleSwitch(
                  dividerColor: ColorsManager.transparent,
                  minWidth:AppConstants.width*AppWidth.s95,
                  minHeight: AppConstants.height * AppHeight.s38,
                  fontSize: 14.0,
                  initialLabelIndex: TeacherInfoScreen.screenIndex,
                  activeBgColor: [ColorsManager.white],
                  activeFgColor: ColorsManager.purpleNavy,
                  inactiveBgColor: ColorsManager.purpleNavy,
                  inactiveFgColor: ColorsManager.white,
                  totalSwitches: 3,
                  cornerRadius: AppConstants.circleRadius,

                  radiusStyle: true,
                  labels: ['Day', 'Week', 'Month'],
                  changeOnTap: true,
                  onToggle: (index) {
                    setState(() {
                      TeacherInfoScreen.screenIndex = index!;
                    });
                    print(TeacherInfoScreen.screenIndex);
                    print(index);
                  },
                ),
              ),
              24.height,
              TeacherInfoScreen.screenIndex == 0
                  ? pages[TeacherInfoScreen.screenIndex]
                  : TeacherInfoScreen.screenIndex == 1
                      ? pages[TeacherInfoScreen.screenIndex]
                      : pages[TeacherInfoScreen.screenIndex],
            ],
          ),
        ),
      ),
    );
  }
}
