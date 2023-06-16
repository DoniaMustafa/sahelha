import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_list_tile.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class AllLocationsScreen extends StatelessWidget {
  const AllLocationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppConstants.width * AppWidth.s30,
              horizontal: AppConstants.width * AppWidth.s20),
          child: Stack(
            // fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.arrow_back)),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          'See All Locations',
                          style: getBoldStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppConstants.width * AppWidth.s50,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, i) => CustomListTile()))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: CustomButton(
                  text: 'ok',
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.dashboardRoute),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
