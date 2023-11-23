import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie/lottie.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import '../../../app_color/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/text_style/style.dart';
import '../controllers/onbording_controller.dart';

class OnbordingView extends GetView<OnbordingController> {
  final OnbordingController onbordingController =
      Get.put(OnbordingController());
  OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return IntroScreenOnboarding(
      backgroudColor: Colors.transparent,
      introductionList: onbordingController.intodata
          .map((e) => Introduction(
                title: e.title,
                titleTextStyle: textStyle(
                    fontsize: 16.sp,
                    fontWidget: FontWeight.w600,
                    color: AppColor.textDark70),
                subTitle: e.discription,
                subTitleTextStyle: textStyle(
                    fontsize: 14.sp,
                    fontWidget: FontWeight.w400,
                    color: AppColor.textDark60),
                imageUrl: e.imageUrl,
                imageHeight: 250.h,
                imageWidth: 250.w,
              ))
          .toList(),
      onTapSkipButton: () {
        Get.toNamed(Routes.login);
      },
      skipTextStyle: textStyle(
          fontsize: 14.sp,
          fontWidget: FontWeight.w400,
          color: AppColor.textDark70),
    );
  }
}
