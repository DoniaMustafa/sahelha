import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = ColorsManager.maximumPurple
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.0008250,0);
    path0.lineTo(0,size.height*0.6980000);
    path0.lineTo(size.width*0.50,size.height);
    path0.lineTo(size.width*0.8388375,size.height);
    path0.lineTo(size.width,size.height*0.9074400);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
