import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/app_string/app_string.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';

import '../../../app_color/app_colors.dart';
import '../../../widget/backround/screen_backround.dart';
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
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImage.splashimage,height: size.height/8.2,width:size.width/4.2 ,),
              SizedBox(
                height: BaseSize.Space_10,
              ),
              Text(AppString.logintext,style: textStyle(fontsize: 18.sp,fontWidget: FontWeight.w600,color: AppColor.textDark70),)
            ],
          ),
        ),
      ),
    );
  }
}
