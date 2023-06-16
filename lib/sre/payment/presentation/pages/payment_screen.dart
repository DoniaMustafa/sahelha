import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/methods.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  static const String whileScreen = '';
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments = AppGenericMethods.getArguments(context);
    // debugPrint(arguments.fromJsonToString);
    if (arguments != null) {
      index = arguments[whileScreen];
    }
    print(index);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Card',
          style: getSemiBoldStyle(color: ColorsManager.black, fontSize: 14),
        ),
        leading: GestureDetector(
          onTap: () => pop(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: ColorsManager.black,
            size: 20,
          ),
        ),
        centerTitle: true,
      ),
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
                height: 30,
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
              if (index == 1)
                SizedBox(
                  height: 40,
                ),
              if (index == 1)
                Row(
                  children: [
                    Radio(
                        value: "radio value",
                        groupValue: "group value",
                        onChanged: (value) {
                          print(value); //selected value
                        }),
                    Text(
                      'save card',
                      style: getSemiBoldStyle(
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              SizedBox(
                height: index == 0 ? 60 : 40,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 200.0),
                  child: CustomButton(
                    isBold: true,
                    iconColor: ColorsManager.white.withOpacity(0.6),
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                          constraints:
                              BoxConstraints(minWidth: AppConstants.width,maxHeight: AppConstants.height*0.8),
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          builder: (context) => Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: ColorsManager.lightGray,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Verify the validity of the card\nthe card',
                                      textAlign: TextAlign.center,
                                      style: getSemiBoldStyle(
                                          fontSize: 15,
                                          color: ColorsManager.purpleNavy),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'Please wait',
                                      textAlign: TextAlign.center,
                                      style: getSemiBoldStyle(
                                          fontSize: 15,
                                          color: ColorsManager.lightGray),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 200,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100),),border: Border.all(color: ColorsManager.green,width:8)),
                                      child: Text('5...',style: getSemiBoldStyle(fontSize: 66,color: ColorsManager.green),),
                                    ),
                                    SizedBox(
                                      height: 45,
                                    ),
                                    Text('We are contacting your bank to ensure that\n the information is correct',
                                    textAlign: TextAlign.center,style: getRegularStyle(color: ColorsManager.lightGray),)
                                  ],
                                ),
                              ));
                    },
                    text: index == 0 ? 'Confirm' : 'Continue',
                    isIcon: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
