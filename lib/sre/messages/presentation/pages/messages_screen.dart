import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomPngImage(image: AssetsManager.user,width: AppConstants.width*AppWidth.s47,
                height:  AppConstants.height*AppHeight.s47,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Profile Name'),
                    Text('Address'),
                  ],
                ),
              ),
              CircleAvatar(backgroundColor: ColorsManager.green,radius: 15,),
            ],
          )
        ],
      ),
    );
  }
}
