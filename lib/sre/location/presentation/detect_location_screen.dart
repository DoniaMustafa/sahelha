import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class DetectLocationScreen extends StatelessWidget {
  const DetectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: Icon(Icons.arrow_back)),
                    SizedBox(width: 20,),
                    Expanded(
                      child:  Text('Detect Location',
                        style: getBoldStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 30,
                ),
                CustomTextField(),
                SizedBox(
                  height: 30,
                ),
                CustomPngImage(image: AssetsManager.map,width: 400,
                    height: 550,isBorderColor: true),SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: CustomButton(
                    text: 'Ok',
                    onPressed: () => Navigator.pushNamed(
                        context,
                        Routes.dashboardRoute),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
