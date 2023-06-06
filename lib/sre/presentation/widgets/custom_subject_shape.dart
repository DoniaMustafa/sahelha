import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';

class CustomSubjectShape extends StatelessWidget {
  const CustomSubjectShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 7),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 5,vertical: 5),
      width: 60,
      height: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: ColorsManager.lightPurple),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: ColorsManager.white),
              child: Image.asset(
                AssetsManager.subject,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            'physics',
            style: getRegularStyle(color: ColorsManager.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
