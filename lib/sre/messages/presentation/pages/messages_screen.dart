import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              color: ColorsManager.maximumPurple,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CustomPngImage(image: AssetsManager.user,width: AppConstants.width*AppWidth.s47,
                  height:  AppConstants.height*AppHeight.s47,
                  ),
                  SizedBox(width: AppConstants.width*AppWidth.s10,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Profile Name',style: getBoldStyle(fontSize: 13,color: ColorsManager.white),),
                        Text('Address',style: getRegularStyle(fontSize: 14,color: ColorsManager.white),),
                      ],
                    ),
                  ),
                  CircleAvatar(backgroundColor: ColorsManager.green,radius: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
