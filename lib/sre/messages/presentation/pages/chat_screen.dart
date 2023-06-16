import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/assets_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_icon.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_png_image.dart';
import 'package:sahelha_app/sre/presentation/widgets/custom_textform.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildUserHeader(context),
          _buildChatBody(),
          _buildTextSendMassage()
        ],
      ),
    );
  }

  Widget _buildUserHeader(context)=>    Container(
    margin: EdgeInsets.symmetric(
      vertical: 30,
    ),
    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    color: ColorsManager.purpleNavy,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(

          children: [
            SizedBox(
              height: AppConstants.height * AppHeight.s15,
            ),
            GestureDetector(
                onTap: ()=>Navigator.pop(context),
                child: CustomIcon(icon: Icons.arrow_back_ios_new,color: ColorsManager.white,size: 20,)),
          ],
        ),
        SizedBox(
          width: AppConstants.width * AppWidth.s10,
        ),
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
              SizedBox(
                height: AppConstants.height * AppHeight.s5,
              ),
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
  );
  Widget _buildChatBody()=>     Positioned(
      top: 130,
      child: Container(
        height: AppConstants.height,
        width: AppConstants.width,
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: ListView.builder(
            itemBuilder: (context, i) {
              if (i.isEven) {
                return _itemAntherUser();
              } else {
                return _myItem(context, i);
              }
            },
            physics: BouncingScrollPhysics(),
            itemCount: 40,
            shrinkWrap: true),
      ));
  Widget _buildTextSendMassage()=>   Positioned(
    bottom: 0.0,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical:7 ),
      height: 65,
      width: AppConstants.width,
      color: ColorsManager.white,
      child: Row(
        children: [
          CustomIcon(
            icon: Icons.mic,
            iconColor: ColorsManager.purpleNavy,
            isColor: true,
            size: 30,
            color: ColorsManager.brightGray,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: CustomTextField(
              isSuffix: true,isChat: true,
              suffixIcon: AssetsManager.send,
            ),
          )
        ],
      ),
    ),
  );

  Widget _itemAntherUser() => Padding(
        padding: EdgeInsets.all(15),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
                  margin: EdgeInsets.only(right: 100),
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
                        'sfdfdsfADVFDAFADFAYTHUHHHHHHHHHHHHHHHHH'
                        'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH'
                        'HHHHHHHHHHHDSFSADFASD}',
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
  Widget _myItem(context, int index) => Padding(
        padding: EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: Container(
              // width: MediaQuery.of(context).size.width / 2,
              margin: EdgeInsets.only(
                left: 100,
              ),
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
                  if (index == 2)
                    Container(
                      width: 500,
                      height: 120,
                      decoration: BoxDecoration(
                        color: ColorsManager.gray,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  Text(
                    index == 3
                        ? 'ddVDAVDAFDAFDAFFFFFFFFddVDAVDAFDAFDAFFFFFFFF'
                        : 'ddVDAVDAFDAFDAFFFFFFFF',
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
