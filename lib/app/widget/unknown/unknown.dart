import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:love_shop/app/app_color/app_colors.dart';
import 'package:love_shop/app/utils/text_style/style.dart';

import '../backround/screen_backround.dart';

class Unknown extends StatelessWidget {
   Unknown({super.key});

  @override
  Widget build(BuildContext context) {
    return BackoundScaffold(
      extendBody: true,
      body: Center(
        child: Text(
          "Not Found",
          style: textStyle(
              fontsize: 16.sp,
              fontWidget: FontWeight.bold,
              color: AppColor.textDark40),
        ),
      ),
    );
  }
}
