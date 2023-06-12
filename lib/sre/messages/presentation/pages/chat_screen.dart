import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 30,
            ),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            color: ColorsManager.purpleNavy,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPngImage(
                  image: AssetsManager.userChat,
                  width: AppConstants.width * AppWidth.s46,
                  height: AppConstants.height * AppHeight.s48,
                  // isBorder: true,
                  // isBorderColor: true,
                ),
                SizedBox(
                  width: AppConstants.width * AppWidth.s10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppConstants.height*AppHeight.s5,),
                      Text(
                        'Profile Name',
                        style: getBoldStyle(
                            fontSize: 13, color: ColorsManager.white),
                      ),
                      Text(
                        'Address',
                        style: getRegularStyle(
                            fontSize: 14, color: ColorsManager.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 130,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ListView.builder(
                        itemBuilder: (context, i) {
                          if (i.isEven) {
                            return itemAntherUser();
                          } else {
                            return myItem(context,i);
                          }
                        },
                        itemCount: 40,
                        shrinkWrap: true),
                    Container(
                      height: 50,
                      width: 300,
                      color: ColorsManager.white,
                    ),

                  ],
                ),
              )),
        ],
      ),
    );
  }

  itemAntherUser() => Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomPngImage(
            isOnline: true,
            image: AssetsManager.userChat,
            width: AppConstants.width * AppWidth.s22,
            height: AppConstants.height * AppHeight.s25,
            isBorderColor: true,
            isUser: true,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              // width: 250,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    15.0,
                  ),
                  topLeft: Radius.circular(
                    15.0,
                  ),
                  topRight: Radius.circular(
                    15.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'sfdfdsfADVFDAFADFAYTHUHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHDSFSADFASD}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    maxLines: null,
                  ),
                ],
              ),
            ),
          ),
        ]),
      );
  myItem(context,int index) => Padding(
        padding: EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: Container(
              // width: MediaQuery.of(context).size.width / 2,
              margin: EdgeInsets.only(left: 10, ),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    15.0,
                  ),
                  topLeft: Radius.circular(
                    15.0,
                  ),
                  topRight: Radius.circular(
                    15.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(index==3)
                  Container(
                    width: 500,
                    height: 114,
                    color: ColorsManager.gray,
                  ),
                  Text(
                    'ddVDAVDAFDAFDAFFFFFFFF',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.end,
                    maxLines: null,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // CircleAvatar(
          //   radius: 20.0,
          //   // child: Image(
          //   // image: NetworkImage(item['image']),
          //   // ),
          // ),
        ]),
      );

  dashBordTyping(context) => Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: ColorsManager.mixGrey.withOpacity(0.3),
            child: Icon(Icons.keyboard_voice),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextFormField(
                    onChanged: (String s) {},
                    // controller: teType,
                    autofocus: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: 'Type a massage...',
                        contentPadding: EdgeInsets.only(
                            left: 20, bottom: 15, top: 15, right: 10),
                        border: InputBorder.none),
                  ),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            // onTap: () =>
            // CubitChat.get(context).onSubmitted(teType.text),
            child: CircleAvatar(
              radius: 20,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Color(0xfff45017C),
                  ),
                  onPressed: () {
                    // CubitChat.get(context).createChat();
                    // CubitChat.get(context).sendMessage(teType.text);
                    // teType.clear();
                  },
                ),
              ),
            ),
          )
        ],
      );
}
