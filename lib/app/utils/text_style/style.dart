import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_color/app_colors.dart';


TextStyle textStyle({
  color = AppColor.textDark70,
  double fontsize = 14,
  fontWidget = FontWeight.normal,
  double letterSpacing = 0,
}) {
  return GoogleFonts.poppins(
      fontSize: fontsize.sp, color: color, fontWeight: fontWidget,
  letterSpacing: letterSpacing);
}
