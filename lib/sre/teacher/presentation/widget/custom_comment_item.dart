import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

import '../../../application/utils/resources/values_manager.dart';

class CustomCommentItem extends StatelessWidget {
  const CustomCommentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 2),
      child: Material(borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 5,
        child: Container(
          padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
            color: ColorsManager.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: ColorsManager., //New
            //     blurRadius: 5.0,
            //   )
            // ],
          ),
          child: Column(
            children: [
              Row(children: [
                CustomPngImage(image: AssetsManager.user,width: 20,height: 20,isBorderColor: true,),
                SizedBox(height: AppConstants.height*AppHeight.s5,),
                Expanded(child: Text('hassnaa adel')),
                Text('4.5'),
                Icon(Icons.star,color: ColorsManager.yellow,
                  size: 20,)
              ],),
              SizedBox(height: AppConstants.height*AppHeight.s10,),
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry‘s standard dummy text ever since the 1500s,',
                style: getRegularStyle(fontSize: 11),),
            ],
          ),
        ),
      ),
    );
  }
}
