import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/badge/gf_badge.dart';
import 'package:getwidget/components/badge/gf_icon_badge.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/shape/gf_icon_button_shape.dart';
import 'package:love_shop/app/app_color/app_colors.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';

import '../../../widget/backround/screen_backround.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackoundScaffold(
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
                onPressed: (){},
                icon: Icon(Icons.notifications,color: Colors.grey,),
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
    );
  }
}
