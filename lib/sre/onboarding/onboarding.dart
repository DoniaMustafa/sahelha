import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/choose_splash_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_text_button.dart';
import 'package:sahelha_app/sre/teacher/teacher.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  List<WalkThroughModelClass> pages = [];
  int currentPosition = 0;
  PageController pageController = PageController();
  String count = '1/3';
  Color angleColor = ColorsManager.red;
  double angle = 0.35;
  Color backgroundColor = ColorsManager.red.withOpacity(0.6);
  // Animation<double>? _animation;
  // AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    init();
    afterBuildCreated(() async {
      pages.add(WalkThroughModelClass(
          title: AppStrings.walkTitle1,
          image: AssetsManager.walk_Img1,
          subTitle: AppStrings.walkThrough1));
      pages.add(WalkThroughModelClass(
          title: AppStrings.walkTitle2,
          image: AssetsManager.walk_Img2,
          subTitle: AppStrings.walkThrough2));
      pages.add(WalkThroughModelClass(
          title: AppStrings.walkTitle3,
          image: AssetsManager.walk_Img3,
          subTitle: AppStrings.walkThrough3));

      setState(() {});
    });
    // _animationController =
    //     AnimationController(vsync: this, value: pages.length.toDouble());
    // _animation =
    //     Tween<double>(begin: 0, end: 100).animate(_animationController!)
    //       ..addListener(() {
    //         setState(() {});
    //       });
  }

  init() async {
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: SafeArea(
        child: PageView.builder(
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            WalkThroughModelClass page = pages[index];
            return Container(
              padding: EdgeInsets.all(AppConstants.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CustomSVGImage(
                          image: AssetsManager.logo, height: 38, width: 38),
                      Spacer(
                        flex: 1,
                      ),
                      CustomTextButton(
                        text: AppStrings.lblSkip,
                        onPress: () async {
                          buildCircleCount();
                          // await setValue(IS_FIRST_TIME, false);
                          TeacherScreen().launch(context,
                              isNewTask: true,
                              pageRouteAnimation: PageRouteAnimation.Fade);
                        },
                      )
                    ],
                  ),
                  30.height,
                  Image.network(
                    page.image.toString(),
                    height: 320,
                    width: 324,
                  ),
                  76.height,
                  Text(page.title.toString(),
                      style: boldTextStyle(
                          size: 15,
                          weight: FontWeight.w600,
                          color: Colors.black)),
                  20.height,
                  Text(
                    page.subTitle.toString(),
                    style: secondaryTextStyle(
                        size: 12, weight: FontWeight.w500, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      buildCircleCount(),
                      Spacer(
                        flex: 1,
                      ),
                      buildNextBut(),
                    ],
                  )
                ],
              ),
            );
          },
          controller: pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (num) {
            currentPosition = num + 1;
            changeCircle();
            setState(() {});
          },
        ),
      ),
    );
  }

  Widget buildCircleCount() => SizedBox(
        // width: 10,
        child: CircularPercentIndicator(
          radius: 22.0,
          lineWidth: 3.0,
          percent: angle,
          center: Text(
            count,
            style: getRegularStyle(color: angleColor),
          ),
          backgroundColor: backgroundColor,
          progressColor: angleColor,
        ),
      );

  Widget buildNextBut() => CustomButton(
        isBold: true,
        onPressed: () async {
          changeCircle();
          if (currentPosition == 3) {
            // await setValue(IS_FIRST_TIME, false);
            ChooseSplashScreen().launch(context,
                isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
          } else {
            pageController.nextPage(
                duration: 500.milliseconds, curve: Curves.linearToEaseOut);
          }
          changeCircle();
        },
        text: currentPosition == 3 ? 'get start' : 'Next',
        isIcon: true,
      );

  void changeCircle() {
    print(currentPosition);
    switch (currentPosition) {
      case 1:
        count = '1/3';
        angleColor = ColorsManager.red;
        backgroundColor = ColorsManager.red.withOpacity(0.6);
        angle = 0.35;
        break;
      case 2:
        count = '2/3';
        angleColor = ColorsManager.yellow;
        backgroundColor = ColorsManager.yellow.withOpacity(0.6);
        angle = 0.65;
        break;
      case 3:
        count = '3/3';
        angleColor = ColorsManager.green;
        backgroundColor = ColorsManager.green.withOpacity(0.6);
        angle = 1.0;
        break;
    }
  }
}
