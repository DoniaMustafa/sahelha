import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
enum RoutesController { replace, pop, popUntil, push, popAndPush, pushNamedAndRemoveUntil }

class AppGenericMethods {
  AppGenericMethods.__internal();

  // static void startProgressDialog(
  //     {required BuildContext context, required String message}) {
  //   AppDialogs.showCustomDialog(context, message: message, dismissible: true);
  // }

  // static void sendOtpSuccess({
  //   required BuildContext context,
  //   required UserEntity userEntity,
  //   required String message,
  //   required int otp,
  //   required String whichScreenKey,
  // }) async {
  //   AppDialogs.dismissCustomDialog(context);
  //
  //   AppDialogs.showCustomDialogWithTimer(context, message: message,
  //       dialogType: DialogTypes.success,
  //       onTimerTimeOut: () async {
  //         AppDialogs.dismissCustomDialog(context);
  //         Navigator.pushNamed(context, Routes.verificationRoute, arguments: {
  //           VerificationScreen.userInfoKey: userEntity,
  //           VerificationScreen.whichScreenKey: whichScreenKey,
  //           VerificationScreen.otpKey: otp,
  //         });
  //         await NotificationApi.notificationsDetails(
  //           body: otp.toString(),
  //           title: AppStrings.otpSent.tr(),
  //         );
  //       });
  // }

  // static void sendOtpFail(
  //     {required BuildContext context, required String message}) {
  //   AppDialogs.dismissCustomDialog(context);
  //   AppDialogs.showCustomDialogWithTimer(context, message: message,
  //       dialogType: DialogTypes.fail,
  //       onTimerTimeOut: () {
  //         AppDialogs.dismissCustomDialog(context);
  //       });
  // }
  //
  // static void startProgressDialogWithTimerSuccess({
  //   required BuildContext context,
  //   String? route,
  //   RoutesController routesController = RoutesController.push,
  //   required String message,
  //   Map<String, dynamic>? arguments,
  // }) {
  //   //AppDialogs.dismissCustomDialog(context);
  //   AppDialogs.showCustomDialogWithTimer(
  //       context, message: message, onTimerTimeOut: () {
  //     AppDialogs.dismissCustomDialog(context);
  //     if (route != null) {
  //       if (routesController == RoutesController.popUntil) {
  //         Navigator.popUntil(context, ModalRoute.withName(route));
  //       }
  //       if (routesController == RoutesController.pushNamedAndRemoveUntil) {
  //         Navigator.pushNamedAndRemoveUntil(
  //           context,
  //           route,
  //               (route) => true,
  //         );
  //       } else if (routesController == RoutesController.pop) {
  //         Navigator.of(context).pop();
  //       } else if (routesController == RoutesController.push) {
  //         Navigator.pushNamed(context, route, arguments: arguments);
  //       }
  //     }
  //   });
  // }
  // //
  // static phoneValidate(BuildContext context, String? text) {
  //   if (text!.isEmpty) {
  //     return ErrorsManagerCubit.addErrorType(
  //         context, AppErrors.phoneEmptyError);
  //   } else if (!(((text.length == 11) && text.startsWith('01')) ||
  //       (text.length == 10) && text.startsWith('1'))) {
  //     ErrorsManagerCubit.addErrorType(
  //       context,
  //       AppErrors.phoneInvalid,
  //     );
  //     debugPrint(text.length.toString());
  //   }
  //   return null;
  // }

  // static String? phoneErrorMessage(BuildContext context) =>
  //     ErrorsManagerCubit.contains(context, AppErrors.phoneEmptyError)
  //         ? ErrorsManagerCubit.getErrorMessage(
  //         context, AppErrors.phoneEmptyError)
  //         : ErrorsManagerCubit.contains(context, AppErrors.phoneInvalid)
  //         ? ErrorsManagerCubit.getErrorMessage(context, AppErrors.phoneInvalid)
  //         : ErrorsManagerCubit.contains(context, AppErrors.phoneStartingError)
  //         ? ErrorsManagerCubit.getErrorMessage(
  //         context, AppErrors.phoneStartingError)
  //         : null;

  // static bool phoneHasErrors(BuildContext context) =>
  //     ErrorsManagerCubit.contains(context, AppErrors.phoneEmptyError) ||
  //         ErrorsManagerCubit.contains(context, AppErrors.phoneInvalid) ||
  //         ErrorsManagerCubit.contains(context, AppErrors.phoneStartingError);
  //
  // static phoneChange(BuildContext context, String text) {
  //   if (text.isEmpty) {
  //     ErrorsManagerCubit.removeError(context, AppErrors.phoneEmptyError);
  //     ErrorsManagerCubit.removeError(context, AppErrors.phoneInvalid);
  //     ErrorsManagerCubit.removeError(context, AppErrors.phoneStartingError);
  //   }
  //   if (text.length > 2 && (text.startsWith('01') || text.startsWith('1'))) {
  //     ErrorsManagerCubit.removeError(context, AppErrors.phoneStartingError);
  //   }
  //   if (text.length > 2 && !(text.startsWith('01') || text.startsWith('1'))) {
  //     ErrorsManagerCubit.addErrorType(context, AppErrors.phoneStartingError);
  //   } /*else if ((((text.length == 11) && !(text.startsWith('01')) || (text.length == 10) && text.startsWith('1')))) {
  //     ErrorsManagerCubit.addErrorType(context, AppErrors.phoneInvalid);
  //   }*/
  //   /* else if (!(((text.length == 11) && text.startsWith('01')) || (text.length == 10) && text.startsWith('1'))) {
  //     ErrorsManagerCubit.addErrorType(context, AppErrors.phoneInvalid);
  //   }
  //   else if ((((text.length == 11) && text.startsWith('01')) || (text.length == 10) && text.startsWith('1'))) {
  //     ErrorsManagerCubit.removeError(context, AppErrors.phoneInvalid);
  //   }*/
  // }

  static Map<String, dynamic>? getArguments(BuildContext context) =>
      (ModalRoute.of(context))!.settings.arguments as Map<String, dynamic>?;

  static dismiss(BuildContext context) => Navigator.pop(context);

//   static changeAppLanguage(BuildContext context) async {
//     if (await AppPrefs.changeLanguage()) {
//       if (context.mounted) {
//         Phoenix.rebirth(context);
//       }
//     }
//   }
// }

  push({required BuildContext context, required String route, Map<String,
      dynamic>? arguments}) =>
      Navigator.pushNamed(context, route, arguments: arguments);

  pop(BuildContext context) => Navigator.pop(context);

/*void goToCookScreen(BuildContext context, CookEntity cook) {
  context
      .read<CookMostRatedFoodsCubit>()
      .getMostRateCookFoods(defaultFoodsGetParamsModel: DefaultGetParamsModel(providerId: cook.cookId));

  context.read<CookProfileCategoriesCubit>().getCookCategories(providerId: cook.cookId!);

  context.read<CookAllFoodsCubit>().getFoods(cookId: cook.cookId!);
  push(context: context, route: Routes.cookProfileRoute, arguments: {CookProfileScreen.cookKey: cook});
}*/

}