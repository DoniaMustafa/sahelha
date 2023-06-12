import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/messages/presentation/pages/chat_screen.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_ciecle_active.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 30,
            ),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            color: ColorsManager.purpleNavy,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPngImage(
                  image: AssetsManager.userChat,
                  width: AppConstants.width * AppWidth.s46,
                  height: AppConstants.height * AppHeight.s47,
                  // isBorder: true,
                  // isBorderColor: true,
                ),
                SizedBox(
                  width: AppConstants.width * AppWidth.s10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile Name',
                        style: getBoldStyle(
                            fontSize: 13, color: ColorsManager.white),
                      ),
                      Text(
                        'Address',
                        style: getRegularStyle(
                            fontSize: 14, color: ColorsManager.white),
                      ),
                    ],
                  ),
                ),
                CustomCircleActive(isOnline:true, )

              ],
            ),
          ),
          Positioned(
            top: 130,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: ColorsManager.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    // width: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          19,
                          (index) => Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatScreen())),
                                  child: CustomPngImage(
                                    isOnline: true,
                                    image: AssetsManager.userChat,
                                    width: 50,
                                    height: 50,
                                    isBorderColor: true,
                                    // isBorder: true,
                                    isUser: true,
                                  ),
                                ),
                              )),
                    ),
                  ),
                  SizedBox(height: AppConstants.height * AppHeight.s75),
                  CustomPngImage(
                    isBorderColor: true,
                    image: AssetsManager.nochat,
                    height: 190.48,
                    width: 189.13,
                  ),
                  SizedBox(height: AppConstants.height * AppHeight.s30),
                  Text(
                    'There Are No Chat',
                    style: getBoldStyle(
                        fontSize: 16,
                        color: ColorsManager.purpleNavy.withOpacity(0.5)),
                  ),
                  Text('Let‘s Go And Get More Orders',
                      style: getRegularStyle(
                          fontSize: 13,
                          color: ColorsManager.purpleNavy.withOpacity(0.5)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
