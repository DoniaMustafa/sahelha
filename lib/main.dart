import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/location/presentation/all_locations_screen.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/signup_screen.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/verify_screen.dart';
import 'package:sahelha_app/sre/dashboard/dashboard_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';
import 'package:sahelha_app/sre/location/presentation/map_screen.dart';
import 'package:sahelha_app/sre/splash_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/teacher_class_screen.dart';
import 'package:sahelha_app/sre/teacher/presentation/pages/teacher_home_screen.dart';

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
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.dashboardRoute,
        home: MapScreen()

    );
  }
}
