

import 'package:flutter/cupertino.dart';

class BaseSize {
  BaseSize._();

   static MediaQueryData? mediaQuery;
   static double? ScreenHeight;
   static double? ScreenWidth;


   void init(BuildContext context){
      mediaQuery = MediaQuery.of(context);
     ScreenHeight =mediaQuery!.size.height;
     ScreenWidth = mediaQuery!.size.width;
   }



  static const double Space_2 = 2;
  static const double Space_3 = 3;
  static const double Space_4 = 4;
  static const double Space_5 = 5;
  static const double Space_6 = 6;
  static const double Space_7 = 7;
  static const double Space_8 = 8;
  static const double Space_9 = 9;
  static const double Space_10 = 10;
  static const double Space_11 = 11;
  static const double Space_12 = 12;
  static const double Space_13 = 13;
  static const double Space_14 = 14;
  static const double Space_15 = 15;
  static const double Space_16 = 16;
  static const double Space_17 = 17;
  static const double Space_18 = 18;
  static const double Space_19 = 19;
  static const double Space_20 = 20;
  static const double Space_21 = 21;
  static const double Space_22 = 22;
  static const double Space_23 = 23;
  static const double Space_24 = 24;
  static const double Space_25 = 25;
  static const double Space_26 = 26;
  static const double Space_27 = 27;
  static const double Space_28 = 28;
  static const double Space_29 = 29;
  static const double Space_30 = 30;
}
