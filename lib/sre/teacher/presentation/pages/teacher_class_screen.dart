import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/messages/presentation/pages/chat_screen.dart';
import 'package:sahelha_app/sre/payment/presentation/pages/payment_screen.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/teacher/presentation/widget/custom_comment_item.dart';
import 'package:sahelha_app/sre/teacher/presentation/widget/custom_teacher_header.dart';

class TeacherClassScreen extends StatelessWidget {
  const TeacherClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      color: ColorsManager.purpleNavy,
                      child: CustomTeacherHeader()),
                ),
                Expanded(flex: 2, child: Container()),
              ],
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Math for the first year of\n secondary school',
                        style: getBoldStyle(
                            fontSize: 16, color: ColorsManager.purpleNavy),
                      ),
                      SizedBox(height: AppConstants.height * AppHeight.s25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Description',
                              style: getSemiBoldStyle(
                                  fontSize: 15, color: ColorsManager.black)),
                          SizedBox(height: AppConstants.height * AppHeight.s10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry‘s standard dummy text ever since the 1500s, ',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                            ),
                          ),
                          SizedBox(height: AppConstants.height * AppHeight.s30),
                          Text('Plugins',
                              style: getSemiBoldStyle(
                                  fontSize: 15, color: ColorsManager.black)),
                          SizedBox(height: AppConstants.height * AppHeight.s10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'A book for the part presented in the training session',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                            ),
                          ),
                          SizedBox(height: AppConstants.height * AppHeight.s30),
                          Row(
                            children: [
                              Text('Comment',
                                  style: getSemiBoldStyle(
                                      fontSize: 15,
                                      color: ColorsManager.black)),
                              SizedBox(
                                  width: AppConstants.width * AppWidth.s10),
                              Container(
                                width: AppConstants.width * AppWidth.s40,
                                height: AppConstants.height * AppHeight.s20,
                                child: Stack(
                                    children: List.generate(3, (index) {
                                  if (index == 0) {
                                    return Image(
                                      image: AssetImage(
                                          "assets/images_png/user.png"),
                                    );
                                  } else if (index == 1) {
                                    return Positioned(
                                      left: 10,
                                      width: AppConstants.width * AppWidth.s20,
                                      height:
                                          AppConstants.height * AppHeight.s20,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images_png/user.png"),
                                      ),
                                    );
                                  } else {
                                    return Positioned(
                                      left: 20,
                                      child: Image(
                                        width:
                                            AppConstants.width * AppWidth.s20,
                                        height:
                                            AppConstants.height * AppHeight.s20,
                                        image: AssetImage(
                                            "assets/images_png/user.png"),
                                      ),
                                    );
                                  }
                                })),
                              ),
                              // SizedBox(width: AppConstants.width * AppWidth.s3),
                              Text('+60 student'),
                            ],
                          ),
                          SizedBox(
                            height: AppConstants.height * AppHeight.s15,
                          ),
                          ListView.builder(
                            itemBuilder: (context, i) => CustomCommentItem(),
                            shrinkWrap: true,
                            itemCount: 8,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                width: AppWidth.s300 * AppConstants.width,
                child: CustomButton(
                  text: 'book this session',
                  onPressed: () {
                    showModalBottomSheet(
                        constraints: BoxConstraints(maxHeight: 330),
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
                                    height: 40,
                                  ),
                                  CustomPngImage(
                                    image: AssetsManager.towCredit,
                                    isBorderColor: true,
                                    width: 110,
                                    height: 110,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 50.0),
                                    child: Row(
                                        children: List.generate(
                                      2,
                                      (index) => Expanded(
                                        child: GestureDetector(
                                          onTap: () => Navigator.pushNamed(
                                              context, Routes.paymentRoute,
                                              arguments: {
                                                PaymentScreen.whileScreen:
                                                    index,
                                              }),
                                          child: Row(
                                            children: [
                                              Radio(
                                                  value: "radio value",
                                                  groupValue: "group value",
                                                  onChanged: (value) {

                                                    print(value); //selected value
                                                  }),
                                              Text(
                                                index == 0
                                                    ? 'Your credit card'
                                                    : 'Add New Card',
                                                style: getSemiBoldStyle(
                                                  fontSize: 13,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
