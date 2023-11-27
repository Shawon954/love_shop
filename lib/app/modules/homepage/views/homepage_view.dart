import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/badge/gf_badge.dart';
import 'package:getwidget/components/badge/gf_icon_badge.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/shape/gf_icon_button_shape.dart';
import 'package:love_shop/app/app_color/app_colors.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/app_string/app_string.dart';
import 'package:love_shop/app/routes/app_pages.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';

import '../../../widget/backround/screen_backround.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  final HomepageController homepageController = Get.put(HomepageController());

  HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return BackoundScaffold(
      backroundColor: AppColor.shadowPrimary15,
      extendBody: true,
      appbar: AppBar(
        title: Text(
          'Sec-4,H-7,Uttara,Dhaka',
          style: textStyle(
              fontsize: 12.sp,
              color: AppColor.textDark50,
              fontWidget: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: BaseSize.Space_10),
            child: GFIconBadge(
              child: GFIconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                shape: GFIconButtonShape.circle,
                color: Colors.transparent,
              ),
              counterChild: GFBadge(
                child: Text("2"),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 50),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 220,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: controller.item.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Stack(
                              children: [
                                InkWell(

                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.only(
                                          topLeft:Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                      child: Center(
                                          child: Image.asset(
                                            controller.item[index].imageUrl,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),

                                  onTap: ()=>Get.toNamed(Routes.details,arguments: [
                                    controller.item![index].imageUrl.toString(),
                                    controller.item![index].title.toString(),
                                    controller.item![index].price.toString(),
                                  ]),

                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white54,
                                      child: Obx(() {
                                        return GestureDetector(
                                          onTap: () {
                                            controller.selectfav(index);
                                          },
                                          child: controller.fav.contains(index)
                                              ? Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                              : Icon(
                                            Icons.favorite_outline,
                                            color: Colors.red,
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.item[index].title,
                                    style: textStyle(
                                        fontWidget: FontWeight.w500,
                                        color: AppColor.textDark60),
                                  ),
                                  Text(
                                    controller.item[index].price.toString(),
                                    style: textStyle(
                                        fontWidget: FontWeight.w600,
                                        color: AppColor.textDark60),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: AnimSearchBar(
              width: 400,
              rtl: true,
              textController: controller.searchbaritem,
              onSuffixTap: () {},
              onSubmitted: (String) {},
            ),
          ),
        ],
      ),


    );
  }
}
