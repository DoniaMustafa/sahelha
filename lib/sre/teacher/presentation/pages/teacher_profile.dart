import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_circle.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';

class TeacherProfileScreen extends StatefulWidget {
  const TeacherProfileScreen({Key? key}) : super(key: key);

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  List pages = [
    DayScreen(),
    WeeckScreen(),
    MonthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: AppConstants.height*AppHeight.s24,
                left: AppConstants.width*AppWidth.s10,
                right: AppConstants.width*AppWidth.s10,

            ),
            height: double.infinity,
            width: double.infinity,
            color: ColorsManager.purpleNavy,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,)),
                    const Spacer(),
                    const Icon(Icons.location_on_outlined,color: Colors.white,size: 17,),
                    const SizedBox(width: 4,),
                    Text("Riydah",style: getRegularStyle(color: Colors.white,fontSize: 14),),
                    const SizedBox(
                      width: 12,
                    ),
                    CustomCircle(
                      isBorder: true,
                      image: AssetsManager.bell,
                      borderColor: ColorsManager.white,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 79,
            width: 79,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.white,width: 2)
            ),
          ),
          Align(
            alignment:Alignment.center,
            child: Container(
              width:75 ,
              height: 75,
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                  color: ColorsManager.transparent,
                  border: Border.all(
                      color:ColorsManager.transparent,
                      width: 2,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Image(
                image: AssetImage(AssetsManager.user),
                fit: BoxFit.fill,
              ),

            ),
          ),
          Positioned(
            bottom: 0,
            right: AppConstants.width*AppWidth.s130,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child:  Center(
                child: CustomSVGImage(
                  image: AssetsManager.profile_edit,
                  width: 15,
                  height: 15,
                ),
              )
            ),
          )
        ],
      ),
                SizedBox(height: 4,),
                Text(
                  "Username",
                  style: getBoldStyle(color: ColorsManager.white,fontSize: 20),
                ),
                SizedBox(height: 4,),
                Text(
                  "Username@user.com",
                  style: getRegularStyle(color: ColorsManager.white,fontSize: 18),
                ),


              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: AppConstants.height*AppHeight.s499,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(26),topRight: Radius.circular(26))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 25,top: 30,right: 20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Row(
                         children: [
                           Container(
                             width: 40,
                             height: 40,
                             child: Stack(
                               children: [
                                 CustomCircle(
                                   isBorder: true,
                                   image: AssetsManager.settings,
                                   borderColor: ColorsManager.white,
                                   width: 20,
                                   height: 20,
                                 ),
                                 Positioned(
                                   height: 40,
                                   left: 10,
                                   child: CustomCircle(
                                     isBorder: true,
                                     image: AssetsManager.settings,
                                     borderColor: ColorsManager.white,
                                     width: 20,
                                     height: 20,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Text('Settings',style: getRegularStyle(fontSize: 17,color: Colors.black),),
                           Spacer(),
                           InkWell(
                             onTap: (){},
                             child: Container(
                               width: 30,
                               height: 30,
                               decoration: BoxDecoration(
                                 color: ColorsManager.lightGray,
                                 borderRadius: BorderRadius.circular(50)
                               ),
                               child: Center(
                                 child: Icon(Icons.arrow_forward_ios,color: ColorsManager.purpleNavy,size: 15),
                               ),
                             ),
                           )
                         ],
                        ),
                      ),
                      SizedBox(
                        height: AppConstants.height*AppHeight.s32,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            CustomCircle(
                              isBorder: true,
                              image: AssetsManager.language,
                              borderColor: ColorsManager.white,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 15,),
                            Text('Language',style: getRegularStyle(fontSize: 17,color: Colors.black),),
                            Spacer(),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: ColorsManager.lightGray,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios,color: ColorsManager.purpleNavy,size: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppConstants.height*AppHeight.s32,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            CustomCircle(
                              isBorder: true,
                              image: AssetsManager.theme,
                              borderColor: ColorsManager.white,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 15,),
                            Text('Theme',style: getRegularStyle(fontSize: 17,color: Colors.black),),
                            Spacer(),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: ColorsManager.lightGray,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios,color: ColorsManager.purpleNavy,size: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppConstants.height*AppHeight.s21,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: ColorsManager.lightGray,
                      ),
                      SizedBox(
                        height: AppConstants.height*AppHeight.s21,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            CustomCircle(
                              isBorder: true,
                              image: AssetsManager.info,
                              borderColor: ColorsManager.white,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 15,),
                            Text('Information',style: getRegularStyle(fontSize: 17,color: Colors.black),),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppConstants.height*AppHeight.s32,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            CustomCircle(
                              isBorder: true,
                              image: AssetsManager.out,
                              borderColor: ColorsManager.white,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 15,),
                            Text('Logout',style: getRegularStyle(fontSize: 17,color: Colors.black),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          )
        ],
      ),

    );
  }
}
