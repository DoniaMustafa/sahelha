import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/all_locations_screen.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/signup_screen.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/verify_screen.dart';
import 'package:sahelha_app/sre/category/category_screen.dart';
import 'package:sahelha_app/sre/category/teacher/presentation/pages/teacher_profile.dart';
import 'package:sahelha_app/sre/dashboard/dashboard_screen.dart';
import 'package:sahelha_app/sre/home/presentation/screens/home_screen.dart';
import 'package:sahelha_app/sre/splash_screen.dart';

import 'sre/category/subject/presentation/pages/subject_screen.dart';
import 'sre/category/subject/presentation/pages/subject_select.dart';

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
        // navigatorKey: navigatorKey,
        home: SubjectSelectScreen()

    );
  }
}
