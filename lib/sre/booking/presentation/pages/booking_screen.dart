import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_%20tap.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class BookingScreen extends StatefulWidget {
  BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTap(
              firstText: 'Booked',
              currentIndex: currentIndex,
              secondText: 'Save',
              onTap: (i) {
                setState(() {
                  currentIndex = i;
                });
              },
            ),

            //
            currentIndex == 0
                ? Expanded(child: _buildListItem())
                : Expanded(child: _buildListItem())
          ],
        ),
      ),
    );
  }

  Widget _buildListItem() => ListView.builder(
        itemBuilder: (context, i) => buildBookedItem(),
        itemCount: 6,
        shrinkWrap: true,
      );
  Widget buildBookedItem() => Container(
        margin: EdgeInsetsDirectional.symmetric(
            horizontal: AppConstants.width * AppWidth.s15,
            vertical: AppConstants.height * AppHeight.s10),
        padding: EdgeInsetsDirectional.only(

            start: AppConstants.width * AppWidth.s15,
            end: AppConstants.width * AppWidth.s15,
            top: AppConstants.height * AppHeight.s12,bottom: AppConstants.height * AppHeight.s20 ),
        decoration: BoxDecoration(
            color: ColorsManager.lightGray.withOpacity(0.2),
            borderRadius: BorderRadius.all(
              Radius.circular(AppConstants.circleRadius),
            ),
            border: Border.all(
                style: BorderStyle.solid,
                color: ColorsManager.whiteGrey.withOpacity(0.2))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                  '11:00 Am',
                  textAlign: TextAlign.center,
                )),
                // Spacer(
                //   flex: 1,
                // ),
                CircleAvatar(
                  backgroundColor:  ColorsManager.white,
                    radius: 13,
                    child: Icon(Icons.favorite,color: ColorsManager.red,size: 20,))
              ],
            ),
            SizedBox(
              height: AppConstants.height * AppHeight.s25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppConstants.height*AppHeight.s80,
                  width: AppConstants.width*AppWidth.s5,
                  decoration: BoxDecoration(
                      color: ColorsManager.maximumPurple,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(
                  width: AppConstants.width*AppWidth.s5,
                ),
                Expanded(
                  flex: 1,
                  child: CustomPngImage(
                      image: AssetsManager.teacherImg,
                      isBorderColor: true,
                      width: AppConstants.width * AppWidth.s85,
                      height: AppConstants.width * AppWidth.s73),
                ),
                SizedBox(
                  width: AppConstants.width*AppWidth.s10,
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppConstants.height*AppHeight.s3,
                        ),
                        Text(
                          'MS. Hassnaa Adel',
                          style: getRegularStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height:AppConstants.height*AppHeight.s5,
                        ),
                        Text(
                          'Math for the first year of secondary school',
                          style: getMediumStyle(
                              fontSize: 12, color: ColorsManager.whiteGrey),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      );
}
