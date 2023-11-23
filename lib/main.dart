import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_shop/app/modules/splash/bindings/splash_binding.dart';
import 'package:love_shop/app/routes/app_pages.dart';

Future <void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();


  runApp(
      ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: Size(360, 690),
       builder: (_,child){
          return GetMaterialApp(
            title: 'Love Shop',
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.initial,
            initialBinding: SplashBinding(),
            getPages: AppPages.routes,

          );
       },
      )
  );
}


