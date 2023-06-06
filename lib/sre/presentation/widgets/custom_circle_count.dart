
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';



class CustomCircleCount extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle =Paint()..strokeWidth =2..color=ColorsManager.darkBlue..style=PaintingStyle.stroke;
    Offset center = Offset(size.width/2, size.height/2);
    double radius=20;
    canvas.drawCircle(center, radius, circle);


    Paint animationArc =Paint()..strokeWidth =3..color=ColorsManager.red..style=PaintingStyle.stroke..strokeCap =StrokeCap.round;
    double angle=4 * pi *(40/100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi/3, angle,false,animationArc);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}