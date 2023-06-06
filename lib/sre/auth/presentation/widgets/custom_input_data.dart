import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_stepper.dart';

class CustomInputData extends StatefulWidget {
  const CustomInputData({Key? key}) : super(key: key);

  @override
  State<CustomInputData> createState() => _CustomInputDataState();
}

class _CustomInputDataState extends State<CustomInputData> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
          currentIndex: _currentIndex,
          index: 0,
          onTap: () {
            setState(() {
              _currentIndex = 0;
            });

          },
        ),
        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
          currentIndex: _currentIndex,
          index: 0,
          onTap: () {
            setState(() {
              _currentIndex = 0;
            });

          },
        ),
        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
          currentIndex: _currentIndex,
          index: 0,
          onTap: () {
            setState(() {
              _currentIndex = 0;
            });

          },
        ),
        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
          currentIndex: _currentIndex,
          index: 0,
          onTap: () {
            setState(() {
              _currentIndex = 0;
            });

          },
        ),
        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
          currentIndex: _currentIndex,
          index: 0,
          onTap: () {
            setState(() {
              _currentIndex = 0;
            });

          },
        ),

        StepperComponent(
          widget: Container(height: 20,
            width: 200,
            color: ColorsManager.purpleNavy,),
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
    );
  }
}
