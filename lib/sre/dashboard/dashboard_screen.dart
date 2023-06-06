import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/category/category_screen.dart';
import 'package:sahelha_app/sre/category/subject/presentation/pages/subject_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';

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
    return DoublePressBackWidget(
      message: 'Press back again to exit app',
      child: Scaffold(
        body: PageView(
          controller: _controller,
          children: const <Widget>[
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            CategoryScreen(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: ColorsManager.lightPurple,
          flat: true,
          controller: _controller,
          items: const[
            RollingBottomBarItem(AssetsManager.home, label: 'Page 1',activeColor: ColorsManager.white),
            RollingBottomBarItem(AssetsManager.star, label: 'Page 2',activeColor: ColorsManager.white),
            RollingBottomBarItem(AssetsManager.booking, label: 'Page 3',activeColor: ColorsManager.white),
            RollingBottomBarItem(AssetsManager.category, label: 'Page 3',activeColor: ColorsManager.white),

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
