import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/strings_manager.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBackground(),
            _buildInputData(context),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140.0),
              child: CustomButton(
                  text: 'Sign up',
                  onPressed: () {},
                  color: ColorsManager.lightPurple),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Or sign up using'),
            SizedBox(
              height: 35,
            ),
            _buildLoginButtons(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    ));
  }

  int _currentIndex = 0;
  Widget _buildBackground() => Stack(
        // alignment: AlignmentDirectional.centerEnd,
        children: [
          CustomPaint(
            size: Size(
                MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height *
                    0.35), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Positioned(
              top: 46,
              right: 25,
              child: CustomPngImage(
                image: AssetsManager.phone,
                height: 215,
                width: 215,
              )),
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
              widget: _buildNameWidget(context),
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
  String? name;

  Widget _buildNameWidget(BuildContext context) => SizedBox(
        width: 300,
        height: 50,
        child: CustomTextField(
          hintText: 'AppStrings.name.tr()',
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
    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomButton(text: 'Facebook',color: ColorsManager.lightPurple,image: AssetsManager.facebook ,isLogo: true,),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: CustomButton(text: 'Google',color: ColorsManager.lightPurple,image: AssetsManager.google ,isLogo: true,),
            ),            SizedBox(width: 30,),

            Expanded(
              child: CustomButton(text: 'Apple',color: ColorsManager.lightPurple,image: AssetsManager.apple ,isLogo: true,),
            ),
          ],
        ),
  );
}
