import 'dart:async';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/fonts_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/onboarding/onboarding.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    afterBuildCreated(() async {
      // setStatusBarColor(Colors.transparent,
      //     statusBarBrightness: Brightness.light,
      //     statusBarIconBrightness:
      //         // appStore.isDarkMode ?
      //         Brightness.light
      //     // : Brightness.dark
      //     );

      // await appStore.setLanguage(getStringAsync(SELECTED_LANGUAGE_CODE,
      //     defaultValue: DEFAULT_LANGUAGE));

      // int themeModeIndex =
      //     getIntAsync(THEME_MODE_INDEX, defaultValue: THEME_MODE_SYSTEM);
      // if (themeModeIndex == THEME_MODE_SYSTEM) {
      //   appStore.setDarkMode(
      //       MediaQuery.of(context).platformBrightness == Brightness.light);
      // }
      Timer(const Duration(seconds: 2), () async {
        //   if (AppPrefs.getIsNewUser) {
        //     Navigator.pushReplacementNamed(context, Routes.getStartedRoute);
        //     await NotificationApi.notificationsDetails(
        //       body: AppStrings.welcomeGobaityNotification.tr(),
        //       title: AppStrings.welcome.tr(),
        //     );
        //     debugPrint('app is new installed ');
        //   } else {
        //     Navigator.of(context).pushReplacementNamed(Routes.homeRoute);
        //     debugPrint('app is already installed');
        //   }
        // });
        // await 10000.milliseconds.delay;
        OnBoardingScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
        // if (getBoolAsync(IN_MAINTENANCE_MODE)) {
        //   MaintenanceModeScreen().launch(context,
        //       isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
        // } else {
        //   if (getBoolAsync(IS_FIRST_TIME, defaultValue: true)) {
        //     WalkThroughScreen().launch(context,
        //         isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
        //   } else {
        //   DashboardScreen().launch(context,
        //       isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
        //   }
      });
    });
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    configureAppSettings(context);
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: AppConstants.height * AppHeight.s124,
                width: AppConstants.width * AppWidth.s124,
                child: CustomSVGImage(
                  image: AssetsManager.logo,
                )),
            SizedBox(height: AppConstants.height * AppHeight.s25),
            Text(AppStrings.appNameEN,
                textAlign: TextAlign.center,
                style: getSemiBoldStyle(
                    fontSize: 25, color: ColorsManager.darkBlue,
                    fontFamily: FontConstants.fontFamilyTajawal)),
            Text(AppStrings.appNameAR,
                textAlign: TextAlign.center,
                style: getSemiBoldStyle(
                    fontSize: 30, color: ColorsManager.darkBlue,fontFamily: FontConstants.fontFamilyTajawal)),
            SizedBox(height: AppConstants.height * AppHeight.s225),
            Text(AppStrings.weMadeYourWayEasier,
                textAlign: TextAlign.center,
                style: getSemiBoldStyle(
                  fontSize: 15,
                )),
          ],
        ),
      ),
    );
  }

  void configureAppSettings(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height; /*app margin*/
  }
}
