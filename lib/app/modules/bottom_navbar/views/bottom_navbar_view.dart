import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/utils/text_style/style.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../app_color/app_colors.dart';
import '../../../widget/backround/screen_backround.dart';
import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  const BottomNavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
       BackoundScaffold(
        extendBody: true,
        bottomNavigationBar: SalomonBottomBar(

          margin: EdgeInsets.only(left: 10,right: 10),

            currentIndex: controller.CurrentIndex.value,
            onTap: (val) {
              controller.CurrentIndex.value = val;

            },
            items: [
              SalomonBottomBarItem(
                  selectedColor:AppColor.buttoncolor,
                  icon: ImageIcon(
                      AssetImage(AppImage.homeoutlineicon)),
                  title: Text("Home")
              ),
              SalomonBottomBarItem(
                  selectedColor:AppColor.buttoncolor,
                  icon:  ImageIcon(
                      AssetImage(AppImage.trolleyoutlineicon)),
                  title: Text("Cart")
              ),
              SalomonBottomBarItem(
                  selectedColor:AppColor.buttoncolor,
                  icon:  ImageIcon(
                      AssetImage(AppImage.passionoutlineicon)),
                  title: Text("Fav")
              ),
              SalomonBottomBarItem(
                  selectedColor:AppColor.buttoncolor,
                  icon: ImageIcon(
                      AssetImage(AppImage.avatericon)),
                  title: Text("Profile",style: textStyle(fontsize: 14.sp,),)
              ),



            ]),

        body: controller.Allpages[controller.CurrentIndex.value],
      ),
    );
  }
}
