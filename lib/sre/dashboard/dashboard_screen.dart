import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/booking/presentation/pages/booking_screen.dart';
import 'package:sahelha_app/sre/category/category_screen.dart';
import 'package:sahelha_app/sre/category/subject/presentation/pages/subject_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';
import 'package:sahelha_app/sre/messages/presentation/pages/messages_screen.dart';

class DashboardScreen extends StatefulWidget {
  final bool? redirectToBooking;

  DashboardScreen({this.redirectToBooking});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;



  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height; /*app margin*/
    return DoublePressBackWidget(
      message: 'Press back again to exit app',
      child: Scaffold(
        body: PageView(
          controller: _controller,
          children:  <Widget>[
            const   HomeScreen(),
            const   MessagesScreen(),
            BookingScreen(),
            const  CategoryScreen(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: ColorsManager.lightPurple,
          flat: true,itemColor: ColorsManager.white ,
          controller: _controller,
          items: const[
            RollingBottomBarItem(AssetsManager.home, label: 'Home',activeColor:ColorsManager.white ),
            RollingBottomBarItem(AssetsManager.messages, label: 'Messages',activeColor: ColorsManager.white),
            RollingBottomBarItem(AssetsManager.booking, label: 'booking',activeColor: ColorsManager.white),
            RollingBottomBarItem(AssetsManager.category, label: 'categories',activeColor: ColorsManager.white),

          ],
          activeItemColor: ColorsManager.white,
          enableIconRotation: true,
          onTap: (index) {
            _controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}
