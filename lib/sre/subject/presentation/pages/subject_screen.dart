import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/routes_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_subject_shape.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            // mainAxisSpacing: 5,
            // crossAxisSpacing: 5,
            childAspectRatio: 0.5 / 0.9,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: ()=>Navigator.pushNamed(context, Routes.subjectSelectRoute),

                child: CustomSubjectShape(
                  image: AssetsManager.subject,
                  text: 'physics',
                ),
              );
            },
            childCount: 27,
          ),
        ),
      ]),
    );
  }
}
