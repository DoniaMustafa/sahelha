import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/category/subject/presentation/pages/subject_select.dart';
import 'package:sahelha_app/sre/location/presentation/all_locations_screen.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/signup_screen.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/verify_screen.dart';
import 'package:sahelha_app/sre/dashboard/dashboard_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';
import 'package:sahelha_app/sre/location/presentation/map_screen.dart';
import 'package:sahelha_app/sre/payment/presentation/pages/payment_screen.dart';
import 'package:sahelha_app/sre/splash_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/teacher_class_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/teacher_home_screen.dart';
import 'package:sahelha_app/sre/wallet/presentation/pages/transactions_history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: ColorsManager.snowWhite,
            appBarTheme: AppBarTheme(
                backgroundColor: ColorsManager.snowWhite, elevation: 0.0)),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.dashboardRoute,
        home: TransactionsHistoryScreen());
  }
}
