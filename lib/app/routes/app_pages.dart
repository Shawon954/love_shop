import 'package:get/get.dart';

import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onbording/bindings/onbording_binding.dart';
import '../modules/onbording/views/onbording_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = "/splash";

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.onbording,
      page: () => OnbordingView(),
      binding: OnbordingBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () =>  LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
