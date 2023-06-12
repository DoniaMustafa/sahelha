import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/auth/presentation/pages/verify_screen.dart';

import 'dart:ui' as ui;

import 'package:sahelha_app/sre/auth/presentation/widgets/clip_path.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_button.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_stepper.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildBackground(),
              const SizedBox(
                height: 20,
              ),
              _buildInputData(context),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140.0),
                child: CustomButton(
                  text: 'Sign up',
                  onPressed: () => Navigator.pushNamed(
                      context,
                      Routes.verificationRoute),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Or sign up using'),
              const SizedBox(
                height: 35,
              ),
              _buildLoginButtons(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _currentIndex = 0;
  Widget _buildBackground() => Stack(
        // alignment: AlignmentDirectional.centerEnd,
        children: [
          CustomPaint(
            size: Size(
                AppConstants.width,
                AppConstants.height *
                    0.25), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Positioned(
            top: 15,
            right: 50,
            child: CustomPngImage(
              isBorderColor: true,
              image: AssetsManager.signBackground,
              height: 180,
              width: 200,
            ),
          ),
        ],
      );
  Widget _buildInputData(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StepperComponent(
              widget: _buildNameWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            StepperComponent(
              widget: _buildLastNameWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            StepperComponent(
              widget: _buildPhoneWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            StepperComponent(
              widget: _buildEmailWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            StepperComponent(
              widget: _buildPasswordWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            StepperComponent(
              widget: _buildConfirmPasswordWidget(context),
              currentIndex: _currentIndex,
              index: 0,
              isLast: true,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
          ],
        ),
      );

  Widget _buildNameWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          prefixHeight: 20,
          prefixWidth: 20,
          isPrefix: true,
          prefixIcon: AssetsManager.person,
          hintText: 'First Name',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );
  Widget _buildLastNameWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          isPrefix: true,
          prefixHeight: 20,
          prefixWidth: 20,
          prefixIcon: AssetsManager.person,
          hintText: 'Last Name',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );
  Widget _buildPhoneWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          isPrefix: true,
          prefixHeight: 25,
          prefixWidth: 18,
          prefixIcon: AssetsManager.phone,
          hintText: '+20 Phone number',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );

  Widget _buildEmailWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          isPrefix: true,
          prefixHeight: AppConstants.height * AppHeight.s18,
          prefixWidth: AppConstants.width * AppWidth.s20,
          prefixIcon: AssetsManager.sms,
          hintText: 'Name@example.com',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );
  Widget _buildPasswordWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          isPrefix: true,
          isSuffix: true,
          suffixIcon: AssetsManager.eye,
          prefixHeight: 22,
          prefixWidth: 18,
          prefixIcon: AssetsManager.lock,
          hintText: 'Password',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );

  Widget _buildConfirmPasswordWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          isPrefix: true,
          prefixHeight: 22,
          prefixWidth: 18,
          isSuffix: true,
          suffixIcon: AssetsManager.eye,
          prefixIcon: AssetsManager.lock,
          hintText: 'Confirm Password',
          validator: (text) {
            if (text!.isEmpty) {}
            return null;
          },
          onSaved: (text) {
            name = text;
          },
          onChanged: (text) {
            // if (ErrorsManagerCubit.contains(context, AppErrors.nameEmptyError)) {
            //   ErrorsManagerCubit.removeError(context, AppErrors.nameEmptyError);
            // }
          },
        ),
      );
  Widget _buildLoginButtons() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomButton(
                width: 15,
                height: 20,
                text: 'Facebook',
                color: ColorsManager.lightPurple,
                image: AssetsManager.facebook,
                fontSize: 12,
                isLogo: true,
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: AppConstants.width * AppWidth.s10,
            ),
            Expanded(
              child: CustomButton(
                text: 'Google',
                width: 20,
                height: 18,
                fontSize: 12,
                color: ColorsManager.red,
                image: AssetsManager.google,
                isLogo: true,
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: AppConstants.width * AppWidth.s10,
            ),
            Expanded(
              child: CustomButton(
                text: 'Apple',
                width: 15,
                height: 20,
                fontSize: 12,
                color: ColorsManager.black,
                image: AssetsManager.apple,
                isLogo: true,
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
