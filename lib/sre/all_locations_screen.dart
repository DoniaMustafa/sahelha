import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'See All Locations',
                style: getBoldStyle(fontSize: 25),
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
        ),
      ),
    );
  }
}
