import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/teacher_notes_widget.dart';


class DayScreen extends StatefulWidget {
   DayScreen({Key? key,}) : super(key: key);
  @override
  State<DayScreen> createState() => _DayScreenState();
}

class _DayScreenState extends State<DayScreen> {
  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  //Required Variables
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 500,
          child: ListView.separated(
              itemBuilder: ((context, index) {
                return TeacherNotesWiget();
              }),
              separatorBuilder: (context, index) => SizedBox(height:AppConstants.height*AppHeight.s20 ),
              itemCount: 10),
        )

        ,
      ],
    );
  }
}
