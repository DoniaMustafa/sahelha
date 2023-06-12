import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/signup_screen.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/verify_screen.dart';
import 'package:sahelha_app/sre/choose_screen.dart';
import 'package:sahelha_app/sre/dashboard/dashboard_screen.dart';
import 'package:sahelha_app/sre/onboarding/onboarding.dart';
import 'package:sahelha_app/sre/splash_screen.dart';

class Routes {
  Routes._internal();
  static const String onBoardingRoute = "/on boarding";
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String signUpRoute = "/signUp";
  static const String mainRoute = "/main";
  static const String homeRoute = "/home";
  static const String dashboardRoute = "/dashboard";
  static const String chooseRoute = "/ChooseScreen";
  static const String mapRoute = "/my location";
  static const String verificationRoute = "/verification";
  static const String categoryRoute = "/category";
  static const String addFoodRoute = "/add food";
  static const String updateFoodRoute = "/update food";
  static const String aboutUsRoute = "/about us";
  static const String seeAllRoute = "/see all";
  static const String clientProfileRoute = "/client profile";
  static const String ordersHistoryRoute = "/orders history";
  static const String favouriteRoute = "/saved";
  static const String accountInfoRoute = "/account info";
  static const String addressDetailRoute = "/address details";
  static const String checkoutRoute = "/checkout";
  static const String doneRoute = "/done";
  static const String cookProfileRoute = "/cook profile";
  static const String cookApplyRoute = "/provider apply";
  static const String providerOrdersRoute = "/provider orders";
  static const String profileRoute = "/provider profile ";
  static const String walletRoute = "/wallet ";
  static const String myFoodsRoute = "/my foods ";
  static const String myTestRoute = "/test ";
  static const String completeCookApplyRoute = "/complete provider ";
  static const String resetPasswordRoute = "/reset password ";
  static const String setNewPasswordRoute = "/set new password ";
  static const String deliveryTrackingScreen = "/delivery tracking ";
  static const String addAndRemoveCards = "/Add Remove Cards ";
  static const String driverMapScreen = "/driver map ";
  static const String clientOrdersRoute = "/client orders ";
  static const String addressesRoute = '/location screen';
  static const String changeInfoRoute = '/change Info';
  static const String changePasswordRoute = '/change Password';
  static const String cookUpdateInfoRoute = '/Update Cook Info';
  static const String driverTrackingRoute = '/driver Tracking';
  static const String editOrderRoute = "/edit Order";
  static const String updateCheckOutRoute = "/update CheckOut";

}

class RouteGenerator {
  RouteGenerator._internal();
  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      case Routes.onBoardingRoute:
        return pageFadeTransition(widget: OnBoardingScreen(), routeSettings: routeSettings);
      case Routes.splashRoute:
        return pageFadeTransition(widget: SplashScreen(), routeSettings: routeSettings);

    //   case Routes.loginRoute:
    //     return pageFadeTransition(widget: LoginScreen(), routeSettings: routeSettings);
      case Routes.signUpRoute:
        return pageFadeTransition(widget: SignUpScreen(), routeSettings: routeSettings);
      case Routes.verificationRoute:
        return pageFadeTransition(widget: VerificationScreen(), routeSettings: routeSettings);

      case Routes.dashboardRoute:
        return pageFadeTransition(widget: DashboardScreen(), routeSettings: routeSettings);
      case Routes.chooseRoute:
        return pageFadeTransition(widget: ChooseScreen(), routeSettings: routeSettings);
    //   case Routes.mapRoute:
    //     return pageFadeTransition(widget: MapScreen(), routeSettings: routeSettings);
    //   case Routes.clientApplyRoute:
    //     return pageFadeTransition(widget: ClientApplyScreen(), routeSettings: routeSettings);
    //   case Routes.categoryRoute:
    //     return pageFadeTransition(widget: CategoryScreen(), routeSettings: routeSettings);
    //   case Routes.addFoodRoute:
    //     return pageFadeTransition(widget: AddFoodScreen(), routeSettings: routeSettings);
    //
    //   case Routes.aboutUsRoute:
    //     return pageFadeTransition(widget: AboutUsScreen(), routeSettings: routeSettings);
    //   case Routes.seeAllRoute:
    //     return pageFadeTransition(widget: SeeAllScreen(), routeSettings: routeSettings);
    //   case Routes.ordersHistoryRoute:
    //     return pageFadeTransition(widget: OrdersHistoryScreen(), routeSettings: routeSettings);
    //   case Routes.accountInfoRoute:
    //     return pageFadeTransition(widget: AccountInfoScreen(), routeSettings: routeSettings);
    //   case Routes.favouriteRoute:
    //     return pageFadeTransition(widget: FavouriteScreen(), routeSettings: routeSettings);
    //   case Routes.addressDetailRoute:
    //     return pageFadeTransition(widget: AddressDetailsScreen(), routeSettings: routeSettings);
    //   case Routes.checkoutRoute:
    //     return pageFadeTransition(widget: CheckOutScreen(), routeSettings: routeSettings);
    //   case Routes.doneRoute:
    //     return pageFadeTransition(widget: DoneScreen(), routeSettings: routeSettings);
    //   case Routes.cookProfileRoute:
    //     return pageFadeTransition(widget: CookProfileScreen(), routeSettings: routeSettings);
    //   case Routes.cookApplyRoute:
    //     return pageFadeTransition(widget: CookApplyScreen(), routeSettings: routeSettings);
    //   case Routes.providerOrdersRoute:
    //     return pageFadeTransition(widget: ProviderOrdersScreen(), routeSettings: routeSettings);
    //   case Routes.profileRoute:
    //     return pageFadeTransition(widget: ProfileScreen(), routeSettings: routeSettings);
    //   case Routes.walletRoute:
    //     return pageFadeTransition(widget: WalletScreen(), routeSettings: routeSettings);
    //   case Routes.myFoodsRoute:
    //     return pageFadeTransition(widget: MyFoodScreen(), routeSettings: routeSettings);
    //   case Routes.completeCookApplyRoute:
    //     return pageFadeTransition(widget: const CompleteCookApplyScreen(), routeSettings: routeSettings);
    //   case Routes.resetPasswordRoute:
    //     return pageFadeTransition(widget: ResetPasswordScreen(), routeSettings: routeSettings);
    //   case Routes.setNewPasswordRoute:
    //     return pageFadeTransition(widget: SetNewPasswordScreen(), routeSettings: routeSettings);
    //   case Routes.deliveryTrackingScreen:
    //     return pageFadeTransition(widget: DeliveryTrackingScreen(), routeSettings: routeSettings);
    //   case Routes.clientOrdersRoute:
    //     return pageFadeTransition(widget: ClientOrdersScreen(), routeSettings: routeSettings);
    //   case Routes.addressesRoute:
    //     return pageFadeTransition(widget: AddressesScreen(), routeSettings: routeSettings);
    //   case Routes.changeInfoRoute:
    //     return pageFadeTransition(widget: ChangeInfoScreen(), routeSettings: routeSettings);
    //   case Routes.changePasswordRoute:
    //     return pageFadeTransition(widget: ChangePasswordScreen(), routeSettings: routeSettings);
    //   case Routes.cookUpdateInfoRoute:
    //     return pageFadeTransition(widget: CookUpdateInfoScreen(), routeSettings: routeSettings);
    //   case Routes.driverTrackingRoute:
    //     return pageFadeTransition(widget: DriverTrackingScreen(), routeSettings: routeSettings);
    //   case Routes.editOrderRoute:
    //     return pageFadeTransition(widget:  EditOrderScreen(), routeSettings: routeSettings);
    //   case Routes.updateFoodRoute:
    //     return pageFadeTransition(widget: UpdateFoodScreen(), routeSettings: routeSettings);
    //
    }
    return null;
  }

  static pageFadeTransition({required Widget widget, RouteSettings? routeSettings}) => PageRouteBuilder(
        settings: routeSettings,
        transitionDuration: const Duration(milliseconds: 100),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          Animation<double> opacity =
              animation.drive(Tween(begin: 0.0, end: 1.0)..chain(CurveTween(curve: Curves.linearToEaseOut)));
          return FadeTransition(
            opacity: opacity,
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => widget,
      );
  static pageBottomLeftToTopRightTransition({required Widget widget, required RouteSettings routeSettings}) => PageRouteBuilder(
        transitionDuration: const Duration(seconds: 1),
        reverseTransitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          Animation<Offset> position = animation.drive(
              Tween(begin: const Offset(-0.5, 1), end: const Offset(0, 0))..chain(CurveTween(curve: Curves.linearToEaseOut)));
          return SlideTransition(
            position: position,
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => widget,
      );
  // static pageScaleTransition({required Widget widget, required RouteSettings routeSettings}) => PageRouteBuilder(
  //       transitionDuration: const Duration(seconds: 1),
  //       reverseTransitionDuration: const Duration(seconds: 1),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         Animation<double> scale = animation.drive(Tween(begin: 0, end: 1)..chain(CurveTween(curve: Curves.fastOutSlowIn)));
  //         return ScaleTransition(
  //           scale: scale,
  //           child: child,
  //         );
  //       },
  //       pageBuilder: (context, animation, secondaryAnimation) {
  //         return FavouriteScreen();
  //       },
  //     );
  // static pageSlideTransition({required Widget widget, required RouteSettings routeSettings}) => PageRouteBuilder(
  //       transitionDuration: const Duration(seconds: 1),
  //       reverseTransitionDuration: const Duration(seconds: 1),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         Animation<Offset> slide = animation
  //             .drive(Tween(begin: const Offset(-.5, 0), end: const Offset(0, 0))..chain(CurveTween(curve: Curves.easeInOut)));
  //         return SlideTransition(
  //           position: slide,
  //           child: child,
  //         );
  //       },
  //       pageBuilder: (context, animation, secondaryAnimation) {
  //         return AboutUsScreen();
  //       },
  //     );
/*
* PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              reverseTransitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                Animation<Offset> slide =
                    animation.drive(Tween(begin: Offset(0.5, 0), end: Offset(0, 0))..chain(CurveTween(curve: Curves.easeInOut)));
                return SlideTransition(position: slide, child: child);
              },
              pageBuilder: (context, animation, secondaryAnimation) {
                return const CategoryScreen();
              },
            )
*
*
* */
}
