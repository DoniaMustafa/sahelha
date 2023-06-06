import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/category/subject/presentation/pages/subject_screen.dart';
import 'package:sahelha_app/sre/category/teacher/presentation/pages/teachers_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int currentIndex=0;
  List<String>ds=['Subject','Teachers'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
              children: List.generate(
            2,
            (index) => Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    size: Size(
                        400,
                        MediaQuery.of(context).size.height /
                            3), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: currentIndex == 0
                        ? RightPSCustomPainter()
                        : LeftCustomPainter(),
                    child:   Row(
                      children: [
                        GestureDetector(
                          onTap: (){

                            setState(() {
                              currentIndex=0;
                            });
                            print(currentIndex);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Text(ds[0],style: getRegularStyle(color: Colors.black),),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            currentIndex=1;
                            setState(() {

                            });
                            print(currentIndex);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Text(ds[1],style: getRegularStyle(color: Colors.black),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )),
          currentIndex==0?Expanded(child: SubjectScreen()):Expanded(child: TeachersScreen())
        ],
      ),
    );
  }
}

class LeftCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.0020000);
    path0.lineTo(0, size.height * 0.7002200);
    path0.quadraticBezierTo(size.width * 0.0972500, size.height * 0.7866600,
        size.width * 0.2251250, size.height * 0.8115800);
    path0.quadraticBezierTo(size.width * 0.4702875, size.height * 0.8666000,
        size.width, size.height * 0.2507200);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, size.height * 0.0013400);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RightPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width, 0);
    path0.lineTo(size.width, size.height * 0.7011000);
    path0.quadraticBezierTo(size.width * 0.9111375, size.height * 0.8031000,
        size.width * 0.8654750, size.height * 0.8015800);
    path0.quadraticBezierTo(size.width * 0.4702875, size.height * 0.8444000, 0,
        size.height * 0.2507200);
    path0.lineTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
