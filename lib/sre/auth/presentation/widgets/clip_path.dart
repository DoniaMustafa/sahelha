import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = ColorsManager.purpleNavy
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.5566093,size.height*-0.3525104);
    path0.cubicTo(size.width*0.2881209,size.height*-0.3525104,size.width*-0.5645465,size.height*-0.4072593,size.width*-0.5645465,size.height*-0.03392160);
    path0.cubicTo(size.width*-0.5645465,size.height*0.1863468,size.width*-0.2727047,size.height*0.4842814,size.width*0.02653093,size.height*0.7102338);
    path0.cubicTo(size.width*0.2332744,size.height*0.8663550,size.width*0.4465279,size.height*0.9994502,size.width*0.5566093,size.height*0.9994502);
    path0.cubicTo(size.width*0.8250977,size.height*0.9994502,size.width*1.042753,size.height*0.6968009,size.width*1.042753,size.height*0.3234636);
    path0.cubicTo(size.width*1.042753,size.height*-0.04987403,size.width,size.height*-0.3525104,size.width*0.5566093,size.height*-0.3525104);
    path0.close();


    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
