import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight =
        AppConstants.height - AppHeight.s90 * AppConstants.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomPngImage(
                  image: AssetsManager.backgroundMap,
                  height: 200,
                  width: 200,
                  isBorderColor: true,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomPngImage(
                  image: AssetsManager.smallMap,
                  height: 318,
                  width: 389,
                  isBorderColor: true,
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: CustomButton(
                    onPressed: ()=>Navigator.pushNamed(context, Routes.detectLocationRoute),
                    text: 'Detect Location',
                    textColor: ColorsManager.purpleNavy,
                    outlined: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: CustomButton(
                      text: 'See All Locations',
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.allLocationsRoute),

                    )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
