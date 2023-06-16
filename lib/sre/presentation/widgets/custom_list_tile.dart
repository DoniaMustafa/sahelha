import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        // borderRadius: BorderRadius.all(Radius.circular(100)),
        elevation: 1.5,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(decoration: BoxDecoration(border: Border.all(width: 0.1,color: ColorsManager.lightGray), borderRadius: BorderRadius.all(Radius.circular(10)),),
          child: ListTile(
            title: Text('Country 3', style: getRegularStyle(fontSize: 18)),
            leading: CustomPngImage(
              image: AssetsManager.flag,
              isBorderColor: true,
              height:25,
              width: 40,
            ),
          ),
        ),
      ),
    );
  }
}
