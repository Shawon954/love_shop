import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/app_string/app_string.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';
import '../../../app_color/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../../../widget/backround/screen_backround.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {

  final SplashController splashController = Get.put(SplashController());
   SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Future.delayed(Duration(),()=>Get.offAllNamed(Routes.onbording));
    return BackoundScaffold(
         extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Image.asset(AppImage.splashimage,width: size.width/4.5,height: size.height/5.5,),
            SizedBox(
              height: BaseSize.Space_5,
            ),
            Text(AppString.splashscreen,style: textStyle(fontWidget: FontWeight.w700,fontsize: 18.sp,letterSpacing: 1,color: AppColor.textDark70),),
            SizedBox(
              height: BaseSize.Space_3,
            ),
            Text(AppString.online_store,style: textStyle(fontWidget: FontWeight.w500,fontsize: 14.sp,letterSpacing: 2.5,color: AppColor.textDark50),),
          ],
        ),
      ),
    );
  }
}
