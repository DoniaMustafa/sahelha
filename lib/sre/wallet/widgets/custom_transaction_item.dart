import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class CustomTransactionsItem extends StatelessWidget {
  CustomTransactionsItem({Key? key,required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),      child: Material(
      borderRadius: BorderRadius.all(
        Radius.circular(20),),
      elevation: 10,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        padding: EdgeInsets.only(right: 25, top: 15,bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomSVGImage(
                image:index.isEven?AssetsManager.highTransaction:AssetsManager.lowTransaction,
                height: 16,
                width: 32,
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('student name',style: getRegularStyle(fontSize: 14, )),
                    SizedBox(height: 15,),
                    Text('session name',style: getRegularStyle(fontSize: 12, )),
                    SizedBox(height: 15,),
                    Text('30 may 2023 - 6:55 PM',style: getRegularStyle(fontSize: 10,color: ColorsManager.mixGrey )),

                  ],
                )),
            Text('+10 SAR',style: getMediumStyle(fontSize: 12,color:index.isEven?Colors.green:Colors.red ),)
          ],
        ),
      ),
    ),
    );
  }
}
