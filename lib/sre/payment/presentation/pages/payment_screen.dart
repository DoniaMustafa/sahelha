import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height; /*app margin*/

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Add New Card',
            style: getSemiBoldStyle(color: ColorsManager.black),
          ),
          centerTitle: true,
          backgroundColor: ColorsManager.white),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomPngImage(
                  image: AssetsManager.creditCard,
                  width: 283,
                  height: 179,
                  isBorderColor: true,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Cardholder‘s Name',
                style: getBoldStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                isSuffix: true,
                suffixIcon: AssetsManager.cardIcon,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Card Number',
                style:
                    getBoldStyle(fontSize: 14, color: ColorsManager.purpleNavy),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                isSuffix: true,
                suffixIcon: AssetsManager.fillCardIcon,
              ),
              SizedBox(
                height:30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Expiration Date',
                        style: getMediumStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 125,
                        child: CustomTextField(
                          hintText: 'MM/YY',
                          isSuffix: true,
                          suffixIcon: AssetsManager.date,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVC',
                        style: getMediumStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 125,
                        child: CustomTextField(
                          hintText: '***',
                          isSuffix: true,
                          suffixIcon: AssetsManager.info,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Radio(
                      value: "radio value",
                      groupValue: "group value",
                      onChanged: (value) {
                        print(value); //selected value
                      }),
                  Text('save card',style: getSemiBoldStyle(
                    fontSize: 13,
                  ),)
                ],
              ),
              SizedBox(
                height: 40,
              ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 100.0),
            child: CustomButton(
              isBold: true,
              iconColor: ColorsManager.white.withOpacity(0.6),
              onPressed: ()  {
              },
              text: 'Get Start' ,
              isIcon:true,
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
