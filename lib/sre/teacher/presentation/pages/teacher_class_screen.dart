import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/messages/presentation/pages/chat_screen.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/teacher/presentation/widget/custom_teacher_header.dart';

class TeacherClassScreen extends StatelessWidget {
  const TeacherClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height; /*app margin*/
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      // margin: EdgeInsets.symmetric(
                      //   vertical: 30,
                      // ),
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      color: ColorsManager.purpleNavy,
                      child: CustomTeacherHeader()),
                ),
                Expanded(flex: 2, child: Container()),
              ],
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Math for the first year of\n secondary school',
                        style: getBoldStyle(
                            fontSize: 16, color: ColorsManager.purpleNavy),
                      ),
                      SizedBox(height: AppConstants.height * AppHeight.s25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Description',
                              style: getSemiBoldStyle(
                                  fontSize: 15, color: ColorsManager.black)),
                          SizedBox(height: AppConstants.height * AppHeight.s10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry‘s standard dummy text ever since the 1500s, ',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                            ),
                          ),
                          SizedBox(height: AppConstants.height * AppHeight.s30),
                          Text('Plugins',
                              style: getSemiBoldStyle(
                                  fontSize: 15, color: ColorsManager.black)),
                          SizedBox(height: AppConstants.height * AppHeight.s10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'A book for the part presented in the training session',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                            ),
                          ),
                          SizedBox(height: AppConstants.height * AppHeight.s30),
                          Row(
                            children: [
                              Text('Comment',
                                  style: getSemiBoldStyle(
                                      fontSize: 15, color: ColorsManager.black)),
                              SizedBox(width: AppConstants.width * AppWidth.s10),
                              Container(
                                width: AppConstants.width * AppWidth.s40,
                                height: AppConstants.height * AppHeight.s20,

                                child: Stack(
                                    children: List.generate(
                                  3,
                                  (index) {
                                    if(index==0){
                                    return Image(
                                    image: AssetImage(
                                        "assets/images_png/user.png"),
                                  );
                                  }else if(index==1){
                                      return Positioned(left: 10,
                                           width: AppConstants.width * AppWidth.s20,
                                                                              height: AppConstants.height * AppHeight.s20,
                                          child: Image(
                                        image: AssetImage(
                                            "assets/images_png/user.png"),
                                      ),);
                                    }
                                    else{
                                      return Positioned(left: 20,
                                        child: Image(
                                          width: AppConstants.width * AppWidth.s20,
                                          height: AppConstants.height * AppHeight.s20,
                                      image: AssetImage(
                                          "assets/images_png/user.png"),
                                    ),);}}
                                )),
                              ),
                              // SizedBox(width: AppConstants.width * AppWidth.s3),
                              Text('+60 student'),
                            ],
                          ),  SizedBox(height: AppConstants.height*AppHeight.s15,),
                          ListView.builder(itemBuilder: (context,i)=>buildItem(),shrinkWrap: true,itemCount: 8,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildItem()=>Padding(
    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
    child: Material(borderRadius: BorderRadius.all(Radius.circular(20)),
      elevation: 5,
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
          color: ColorsManager.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: ColorsManager., //New
          //     blurRadius: 5.0,
          //   )
          // ],
        ),
        child: Column(
          children: [
            Row(children: [
              CustomPngImage(image: AssetsManager.user,width: 20,height: 20,isBorderColor: true,),
              SizedBox(height: AppConstants.height*AppHeight.s5,),
              Expanded(child: Text('hassnaa adel')),
              Text('4.5'),
              Icon(Icons.star,color: ColorsManager.yellow,
              size: 20,)
            ],),
            SizedBox(height: AppConstants.height*AppHeight.s10,),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry‘s standard dummy text ever since the 1500s,',
            style: getRegularStyle(fontSize: 11),),
          ],
        ),
      ),
    ),
  );
}
