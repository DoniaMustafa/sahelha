import 'dart:ui';

import '../resources/assets_manager.dart';
import '../resources/colors_manager.dart';
import '../resources/strings_manager.dart';

enum DialogTypes { loading, fail, success }

enum AppStates {
  clientLogin,
  providerLogin,
  clientRegister,
  providerRegister,
}

enum ListStates {
  loading,
  loadedWithData,
  loadedWithNoData,
  paginationStarted,
  paginationEnded,
  loadedAll,
  filterStarted,
  filterEnded,
}

class AppConstants {
  AppConstants._internal();
  static const String empty = "";
  static const double startOffset = 0;
  static const int zero = 0;
  static double circleStrokeWidth = 3;
  static double circleRadius = 10;
  static  double height = 0;
  static  double width =0;
  static const int splashDelay = 5;
  static const int sliderDelay = 2;
  static const int pinCodeNumberOfDigits = 4;
  static double margin = 0;
  static const int phoneNumberLength = 10;
  static const int d2 = 200;
  static const int dm4 = 4000;
  static const int dm2 = 2000;
  static const int dm5 = 5000;
  static const double borderRadius = 20.0;
  static double appBarHeight = 0;
  static double appBodyHeight = 0;
  static const int nLoadingItems = 6;
}
