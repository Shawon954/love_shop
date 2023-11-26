import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../cartpage/views/cartpage_view.dart';
import '../../favioratpage/views/favioratpage_view.dart';
import '../../homepage/views/homepage_view.dart';
import '../../userprofile/views/userprofile_view.dart';

class BottomNavbarController extends GetxController {

  RxInt CurrentIndex = 0.obs;

  var iconsshow = false.obs;

  final Allpages = [
    HomepageView(),
    FavioratpageView(),
    CartpageView(),
    UserprofileView(),
  ];

  @override
  void onInit() {
    iconsfull();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void iconsfull(){
    iconsshow.value =! iconsshow.value;
  }


}
