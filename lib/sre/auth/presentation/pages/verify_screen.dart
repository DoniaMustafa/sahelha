import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_pin_code_text_form.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorsManager.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    CustomPngImage(
                      isBorderColor: true,
                      image: AssetsManager.verifyBackground,
                      height: 220,
                      width: 255,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Verification Code',
                  style: getBoldStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Please enter the ode we sent to your\nmobile number 1394838*** ',
                    style: getRegularStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:AppConstants.width*AppWidth.s50),
                  child: CustomPinCodeTextField(
                    alignment: AlignmentDirectional.center,
                    // showError: ErrorsManagerCubit.contains(
                    //     context, AppErrors.pinCodeEmptyError) ||
                    //     ErrorsManagerCubit.contains(
                    //         context, AppErrors.pinCodeInvalidError) ||
                    //     ErrorsManagerCubit.contains(
                    //         context, AppErrors.pinCodeNotMatchedError),
                    // message: ErrorsManagerCubit.contains(
                    //     context, AppErrors.pinCodeEmptyError)
                    //     ? ErrorsManagerCubit.getErrorMessage(
                    //     context, AppErrors.pinCodeEmptyError)
                    //     : ErrorsManagerCubit.contains(
                    //     context, AppErrors.pinCodeInvalidError)
                    //     ? ErrorsManagerCubit.getErrorMessage(
                    //     context, AppErrors.pinCodeInvalidError)
                    //     : ErrorsManagerCubit.contains(
                    //     context, AppErrors.pinCodeNotMatchedError)
                    //     ? ErrorsManagerCubit.getErrorMessage(
                    //     context, AppErrors.pinCodeNotMatchedError)
                    //     : null,
                    onSaved: (text) {}, onChanged: (String text) {  },
                    //   if (text!.isEmpty) {
                    //     ErrorsManagerCubit.addErrorType(
                    //         context, AppErrors.pinCodeEmptyError);
                    //     return;
                    //   } else if (text.length <
                    //       AppConstants.pinCodeNumberOfDigits) {
                    //     ErrorsManagerCubit.addErrorType(
                    //         context, AppErrors.pinCodeInvalidError);
                    //     return;
                    //   } else if (int.parse(text) != otp) {
                    //     ErrorsManagerCubit.addErrorType(
                    //         context, AppErrors.pinCodeNotMatchedError);
                    //     return;
                    //   }
                    //   otp = int.parse(text!);
                    // },
                    // onChanged: (text) {
                    //   if (ErrorsManagerCubit.contains(
                    //       context, AppErrors.pinCodeEmptyError)) {
                    //     ErrorsManagerCubit.removeError(
                    //         context, AppErrors.pinCodeEmptyError);
                    //   }
                    //   if (text.length == 4 &&
                    //       ErrorsManagerCubit.contains(
                    //           context, AppErrors.pinCodeInvalidError)) {
                    //     ErrorsManagerCubit.removeError(
                    //         context, AppErrors.pinCodeInvalidError);
                    //   }
                    //   if (ErrorsManagerCubit.contains(
                    //       context, AppErrors.pinCodeNotMatchedError)) {
                    //     ErrorsManagerCubit.removeError(
                    //         context, AppErrors.pinCodeNotMatchedError);
                    //   }
                    // },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+10-293-038-3733',
                      style: getRegularStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomSVGImage(
                      image: AssetsManager.edit,
                      height: 19,
                      width: 19,
                    )
                  ],
                ),

                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: CustomButton(onPressed: (){},
                    text: 'Send Again',
                    textColor: ColorsManager.purpleNavy,
                    outlined: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: CustomButton(text:'Submit',onPressed: ()=>Navigator.pushNamed(context, Routes.mapRoute),isIcon: true,)

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
