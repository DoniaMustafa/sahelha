import 'package:flutter/material.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/teacher_notes_widget.dart';


class WeeckScreen extends StatefulWidget {
  const WeeckScreen({Key? key}) : super(key: key);

  @override
  State<WeeckScreen> createState() => _WeeckScreenState();
}

class _WeeckScreenState extends State<WeeckScreen> {
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
        Container(
          width: AppConstants.width*AppWidth.s300,
            height: AppConstants.height*AppHeight.s65,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 14);
            },
            itemCount: 365,
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentDateSelectedIndex = index;
                    selectedDate =
                        DateTime.now().add(Duration(days: index));
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      listOfDays[DateTime.now()
                          .add(Duration(days: index))
                          .weekday -
                          1]
                          .toString(),
                      style:currentDateSelectedIndex == index
                          ?getBoldStyle(fontSize: 14,color: ColorsManager.purpleNavy)
                          :getRegularStyle(fontSize: 12,color: ColorsManager.gray)
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width:currentDateSelectedIndex == index
                      ?AppConstants.width*AppWidth.s40
                          :AppConstants.width*AppWidth.s37 ,
                      height: currentDateSelectedIndex == index
                          ?AppConstants.height*AppHeight.s40
                      : AppConstants.height*AppHeight.s37,
                      decoration: BoxDecoration(
                        color:currentDateSelectedIndex == index
                            ?ColorsManager.white
                        :ColorsManager.purpleNavy,
                        borderRadius: BorderRadius.circular(8),
                        border: currentDateSelectedIndex == index
                          ?Border.all(
                          color: ColorsManager.purpleNavy,
                          width: 1.0,
                        ):Border.all(
                          color: Colors.grey,
                          width: 0,
                        )
                      ),
                      child: Builder(
                        builder: (context) {
                          return Center(
                            child: Text(
                              DateTime.now()
                                  .add(Duration(days: index))
                                  .day
                                  .toString(),
                              style: currentDateSelectedIndex == index
                              ?getBoldStyle(color: ColorsManager.purpleNavy,fontSize: 12)
                              :getRegularStyle(color: ColorsManager.white,fontSize: 12,)
                            ),
                          );
                        }
                      ),
                    ),


                  ],
                ),
              );
            },
          ),
             ),
        29.height,
        SizedBox(
          height: 420,
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
