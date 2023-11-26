import 'package:get/get.dart';

import '../modules/bottom_navbar/bindings/bottom_navbar_binding.dart';
import '../modules/bottom_navbar/views/bottom_navbar_view.dart';
import '../modules/cartpage/bindings/cartpage_binding.dart';
import '../modules/cartpage/views/cartpage_view.dart';
import '../modules/favioratpage/bindings/favioratpage_binding.dart';
import '../modules/favioratpage/views/favioratpage_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onbording/bindings/onbording_binding.dart';
import '../modules/onbording/views/onbording_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/userprofile/bindings/userprofile_binding.dart';
import '../modules/userprofile/views/userprofile_view.dart';
import '../widget/unknown/unknown.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = "/splash";

  static const Unknownpage = '/not_found';

  static final routes = [
     GetPage(name: Unknownpage,
         page:()=> Unknown()
     ),

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
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => const BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
    GetPage(
      name: _Paths.homepage,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.cartpage,
      page: () => const CartpageView(),
      binding: CartpageBinding(),
    ),
    GetPage(
      name: _Paths.favioratpage,
      page: () => const FavioratpageView(),
      binding: FavioratpageBinding(),
    ),
    GetPage(
      name: _Paths.userprofile,
      page: () => const UserprofileView(),
      binding: UserprofileBinding(),
    ),
  ];
}
