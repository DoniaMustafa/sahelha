import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';

class TeacherButton extends StatelessWidget{
  Color? buttonColor;
  String? text;

  TeacherButton({this.buttonColor , this.text});
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){},
     child: Container(
       width: AppConstants.width*AppWidth.s130,
       height: AppConstants.height*AppHeight.s35,
       decoration: BoxDecoration(
           color:buttonColor,
           borderRadius: BorderRadius.circular(10)
       ),
       child: Center(
         child: Text(
           text!,
           style: getBoldStyle(fontSize: 11.95,color: ColorsManager.purpleNavy),
         ),
       ),
     ),
   );
  }

}