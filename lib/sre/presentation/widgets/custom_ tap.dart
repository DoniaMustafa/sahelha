import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';

class CustomTap extends StatefulWidget {
  CustomTap(
      {Key? key, required this.firstText, required this.secondText,this.onTap,this.currentIndex=0})
      : super(key: key);
  final String firstText;
  final String secondText;
  final Function(int index)? onTap;
  final int currentIndex;

  @override
  State<CustomTap> createState() => _CustomTapState();
}

class _CustomTapState extends State<CustomTap> {
   // int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            2,
            (index) => GestureDetector(
                  onTap: (){

                    widget.onTap!(index);
                  },
                  child: Column(
                    children: [
                      Text(
                        index == 0 ?widget.firstText:widget.secondText,
                        style: getBoldStyle(
                            fontSize: 15, color: widget.currentIndex == index?ColorsManager.lightPurple:ColorsManager.mixGrey),
                      ),
                      widget.currentIndex == index
                          ? Container(
                              width: 80, height: 6,
                              decoration: const BoxDecoration(
                                  color: ColorsManager.lightPurple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              // width: AppConstants.width * AppWidth.s67,
                              // height: AppConstants.height * AppHeight.s15,
                            )
                          : SizedBox()
                    ],
                  ),
                )),
      ),
    );
  }
}
