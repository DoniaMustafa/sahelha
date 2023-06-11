import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_circle.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_svg_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_three_images.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  double height=6;

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
      body: Padding(
        padding:  EdgeInsets.only(
          top: AppConstants.height*AppHeight.s50,
          left:AppConstants.width*AppWidth.s21,
          right:AppConstants.width*AppWidth.s21,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserInfo(),
              SizedBox(
                height: AppConstants.height*AppHeight.s33,
              ),
              Row(
                children: [
                  _buildSessionsDetails(),
                  SizedBox(width: AppConstants.width*AppWidth.s34,),
                  _buildSessionsDetails(),
                ],
              ),
              SizedBox(
                height: AppConstants.height*AppHeight.s31,
              ),
              Container(
                width: double.infinity,
                height: 242,
                color: ColorsManager.purpleNavy,
              ),
              SizedBox(
                height: AppConstants.height*AppHeight.s25,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                    children: [
                      Text(
                        'feedback',
                        style: getBoldStyle(color: ColorsManager.purpleNavy,fontSize: 18),
                      ),
                      SizedBox(width: 5,),
                      customThreeImages(ColorsManager.white),
                      SizedBox(width: 3,),
                      Text("+20 students",
                        style: getRegularStyle(fontSize: 9,color: ColorsManager.gray),
                      ),
                    ],
                  )),
                  Row(
                    children: [
                      Text(
                        '4.0',
                        style: getRegularStyle(
                            fontSize: 12, color: ColorsManager.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 2),
                      CustomSVGImage(
                        image: AssetsManager.rating,
                        height: 12,
                        width: 12,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 5,
                shadowColor: Colors.grey,
                child: Container(
                  width: AppConstants.width*AppWidth.s300,
                  height: AppConstants.height*AppHeight.s160,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'advantage of the session',
                                style: getMediumStyle(
                                    fontSize: 12, color: ColorsManager.black),
                              ),
                            ),
                            Text(
                              '80%',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                            ),
                            Container(
                              width: AppConstants.width*AppWidth.s80,
                              child: Slider(
                                value: height,
                                max:100,
                                min:5,
                                activeColor: ColorsManager.lightBabyBlue,
                                inactiveColor: ColorsManager.lightBabyBlue,
                                onChanged: (value){
                                  setState(() {
                                    height=value;
                                  });
                                },
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'comfort in place',
                                style: getMediumStyle(
                                    fontSize: 12, color: ColorsManager.black),
                              ),
                            ),
                            Text(
                              '80%',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: AppConstants.width*AppWidth.s80,
                              child: Slider(
                                value: height,
                                max:100,
                                min:5,
                                activeColor: ColorsManager.lightBabyBlue,
                                inactiveColor: ColorsManager.lightBabyBlue,
                                onChanged: (value){
                                  setState(() {
                                    height=value;
                                  });
                                },
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'resources',
                                style: getMediumStyle(
                                    fontSize: 12, color: ColorsManager.black),
                              ),
                            ),
                            Text(
                              '80%',
                              style: getRegularStyle(
                                  fontSize: 12, color: ColorsManager.black),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: AppConstants.width*AppWidth.s80,
                              child: Slider(
                                value: height,
                                max:100,
                                min:5,
                                activeColor: ColorsManager.lightBabyBlue,
                                inactiveColor: ColorsManager.lightBabyBlue,
                                onChanged: (value){
                                  setState(() {
                                    height=value;
                                  });
                                },
                              ),
                            )

                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Text(
                            'comment',
                            style: getBoldStyle(color: ColorsManager.purpleNavy,fontSize: 18),
                          ),
                          SizedBox(width: 5,),
                          customThreeImages(ColorsManager.white),
                          SizedBox(width: 3,),
                          Text("+20 students",
                            style: getRegularStyle(fontSize: 9,color: ColorsManager.gray),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 15,),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images_png/user.png')
                                  )
                              ),

                            ),
                            SizedBox(width: 5,),
                            Text("Teacher Name" ,
                              style: getMediumStyle(fontSize: 10,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry\'s standard dummy text ever since the 1500s, '
                          ,
                          style: getMediumStyle(fontSize: 12,color: Colors.black),
                        )

                      ],
                    ),
                  ),
                );
              }, separatorBuilder: (context, index) => SizedBox(height: 10), itemCount: 20)

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildUserInfo() => Row(
    children: [
      CustomPngImage(isBorderColor: true,
          image: AssetsManager.user, height: 48, width: 48, isBorder: true),
      SizedBox(
          width: 5
        // AppConstants.width * AppWidth.s5,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Teacher Name',
              style: getSemiBoldStyle(
                  fontSize: 15, color: ColorsManager.black),
            ),
            SizedBox(
              height: AppConstants.height * AppHeight.s2,
            ),
            Text(
              'location',
              style: getRegularStyle(),
            ),
          ],
        ),
      ),
      CustomCircle(
        isBorder: true,
        image: AssetsManager.search,
        borderColor: ColorsManager.purpleNavy,
        width: 20,
        height: 20,
      ),
      SizedBox(
        width: 12,
      ),
      CustomCircle(
        isBorder: true,
        image: AssetsManager.notify,
        borderColor: ColorsManager.purpleNavy,
        width: 20,
        height: 20,
      ),
    ],
  );
  Expanded _buildSessionsDetails()=> Expanded(
    flex: 1,
    child: Container(
      decoration: BoxDecoration(
          color: ColorsManager.purpleNavy,
          borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsetsDirectional.all(20),
      child:Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text("02",
                  style: getBoldStyle(color: ColorsManager.white,fontSize: 15),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 0,
                child: Text("02",
                  style: getBoldStyle(color: ColorsManager.white,fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Center(
            child: Text('session this week',
              style: getRegularStyle(color: Colors.white,fontSize: 12),
            ),
          )
        ],
      ) ,
    ),
  );
}
