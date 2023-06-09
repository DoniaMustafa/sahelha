import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';

class TeacherImageWidget extends StatelessWidget{
  final String? teacherImagePath;

  TeacherImageWidget({this.teacherImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.height*AppHeight.s73,
      width: AppConstants.width*AppWidth.s85,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius:  BorderRadius.circular(7),
      ),
      child: Image(
        image: AssetImage(teacherImagePath ?? "assets/images_png/teacher_img.png"),
        fit: BoxFit.cover,
      ),
    );
  }

}