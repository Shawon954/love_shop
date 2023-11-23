import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/app_string/app_string.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';

import '../../../app_color/app_colors.dart';
import '../../../widget/backround/screen_backround.dart';
import '../../../widget/button/button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {

  final LoginController  loginController = Get.put(LoginController());

   LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: BackoundScaffold(
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height/5.0,
                ),
                Image.asset(AppImage.splashimage,height: size.height/8.2,width:size.width/4.2 ,),
                SizedBox(
                  height: BaseSize.Space_10,
                ),
                Text(AppString.logintext,style: textStyle(fontsize: 18.sp,fontWidget: FontWeight.w600,color: AppColor.textDark70,letterSpacing: 1.2),),
                SizedBox(
                  height: BaseSize.Space_30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: BaseSize.Space_15,right: BaseSize.Space_15),
                  child: Form(
                    key: controller.loginkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: BaseSize.Space_8),
                        child: Text(AppString.emailtext,style: textStyle(fontsize: 14.sp,color: AppColor.textDark70,fontWidget: FontWeight.w400),),
                      ),
                       SizedBox(height: BaseSize.Space_5,),

                       TextFormField(
                         controller: controller.loginemailcontroller,
                         keyboardType: TextInputType.emailAddress,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.email,color: AppColor.primaryLighter,),
                           focusedBorder: OutlineInputBorder(

                             borderRadius: BorderRadius.all(Radius.circular(12)),
                             borderSide: BorderSide(
                               color: AppColor.shadowDark40,
                               width: 1.8,
                             )
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             borderSide: BorderSide(
                                 color:  AppColor.shadowDark50,width: 1.8
                             ),
                           ),

                         ),
                       ),
                      SizedBox(
                        height: BaseSize.Space_25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: BaseSize.Space_8),
                        child: Text(AppString.passwordtext,style: textStyle(fontsize: 14.sp,color: AppColor.textDark70,fontWidget: FontWeight.w400),),
                      ),
                      SizedBox(height: BaseSize.Space_5,),
                      TextFormField(
                         controller: controller.loginpasswordcontroller,
                         keyboardType: TextInputType.emailAddress,
                         cursorColor: AppColor.textDark80,
                          autocorrect: true,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.lock,color: AppColor.primaryLighter,),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(12)),
                             borderSide: BorderSide(
                               color: AppColor.shadowDark40,
                               width: 1.8,
                             )
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             borderSide: BorderSide(
                                 color:  AppColor.shadowDark50,width: 1.8
                             ),
                           ),


                         ),
                       ),
                    ],
                   ),
                  ),
                ),
                SizedBox(
                  height: BaseSize.Space_25,
                ),
                Button(
                  height: size.height/15.0,
                  width: size.width/1.8,
                  child: Text(AppString.logintext,style: textStyle(fontWidget: FontWeight.w500,fontsize: 18.sp,letterSpacing: 1.1),),
                  onPressed: () {  },),

                SizedBox(
                  height: BaseSize.Space_20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
