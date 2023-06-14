import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';
import 'package:sahelha_app/sre/presentation/widgets/subject_select_widget.dart';

class SubjectSelectScreen extends StatefulWidget {
  const SubjectSelectScreen({Key? key}) : super(key: key);

  @override
  State<SubjectSelectScreen> createState() => _SubjectSelectScreenState();
}

class _SubjectSelectScreenState extends State<SubjectSelectScreen> {
  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back_ios,color: ColorsManager.purpleNavy,size: 18,)),
        title: Text("Math",style: getBoldStyle(fontSize: 15,color:ColorsManager.purpleNavy )),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 31,right: 30,top: 20),
            child: CustomTextField(
                textFormColor: ColorsManager.white.withOpacity(0.2),
                isSuffix: true,
                onSaved: (String? text) {},
                suffixIcon: AssetsManager.search,
                hintText: 'Search'),
          ),
          SizedBox(
            height: 37,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return SubjectSelectWidget();
                }),
                separatorBuilder: ((context, index) => SizedBox(height: 10,)),
                itemCount: 10),
          )

        ],
      ),
    );
  }
}
