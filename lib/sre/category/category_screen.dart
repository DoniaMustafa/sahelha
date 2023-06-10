import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/category/subject/presentation/pages/subject_screen.dart';
import 'package:sahelha_app/sre/category/teacher/presentation/pages/teachers_screen.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_%20tap.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int currentIndex = 0;
  List<String> ds = ['Subject', 'Teachers'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          // AppConstants.width* AppWidth.s35
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              CustomTap(
                firstText: 'Subject',
                currentIndex: currentIndex,
                secondText: 'Teachar',
                onTap: (i) {
                  setState(() {
                    currentIndex = i;
                  });
                },
              ),
              // SizedBox(height: 24,),
              CustomTextField(
                  textFormColor: ColorsManager.white.withOpacity(0.2),
                  isSuffix: true,
                  onSaved: (String? text) {},
                  suffixIcon: AssetsManager.search,
                  hintText: 'Search'),
              SizedBox(
                height: 37,
              ),

              currentIndex == 0
                  ? Expanded(
                      child: SubjectScreen(),
                    )
                  : Expanded(child: TeachersScreen())
            ],
          ),
        ),
      ),
    );
  }
}

// class LeftCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint0 = Paint()
//       ..color = ColorsManager.maximumPurple
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//     Path path0 = Path();
//     path0.moveTo(0, size.height * 0.0020000);
//     path0.lineTo(0, size.height * 0.7002200);
//     path0.quadraticBezierTo(size.width * 0.0972500, size.height * 0.7866600,
//         size.width * 0.2251250, size.height * 0.8115800);
//     path0.quadraticBezierTo(size.width * 0.4702875, size.height * 0.8666000,
//         size.width, size.height * 0.2507200);
//     path0.lineTo(size.width, 0);
//     path0.lineTo(0, size.height * 0.0013400);
//
//     canvas.drawPath(path0, paint0);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
//
// class RightPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//     Path path0 = Path();
//     path0.moveTo(size.width, 0);
//     path0.lineTo(size.width, size.height * 0.7011000);
//     path0.quadraticBezierTo(size.width * 0.9111375, size.height * 0.8031000,
//         size.width * 0.8654750, size.height * 0.8015800);
//     path0.quadraticBezierTo(size.width * 0.4702875, size.height * 0.8444000, 0,
//         size.height * 0.2507200);
//     path0.lineTo(0, 0);
//     path0.lineTo(size.width, 0);
//     path0.close();
//
//     canvas.drawPath(path0, paint0);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
